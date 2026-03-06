import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:ffmpeg_kit_flutter_min_gpl/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter_min_gpl/return_code.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:lavagna_tattica/core/supabase_client.dart';

class VideoService {
  /// Compresses and trims video to max 30 seconds for easier processing.
  Future<File?> processVideo(File inputVideo) async {
    if (kIsWeb) return inputVideo; // Skip compression on web for now
    
    final tempDir = await getTemporaryDirectory();
    final outputPath = p.join(tempDir.path, 'processed_${DateTime.now().millisecondsSinceEpoch}.mp4');

    // FFmpeg command:
    // -t 30: limit to 30 seconds
    // -vf scale: resize to 720p for faster processing
    // -vcodec libx264: standard compression
    final String command = '-i "${inputVideo.path}" -t 30 -vf "scale=-2:720" -vcodec libx264 -crf 28 -preset superfast -y "$outputPath"';

    final session = await FFmpegKit.execute(command);
    final returnCode = await session.getReturnCode();

    if (ReturnCode.isSuccess(returnCode)) {
      return File(outputPath);
    } else {
      return null;
    }
  }

  /// Uploads video to Supabase Storage 'videos' bucket.
  Future<String?> uploadVideo(File videoFile, String userId) async {
    try {
      final fileName = '${userId}_${DateTime.now().millisecondsSinceEpoch}.mp4';
      final path = 'raw/$fileName';

      await supabase.storage.from('videos').upload(
            path,
            videoFile,
          );

      return supabase.storage.from('videos').getPublicUrl(path);
    } catch (e) {
      return null;
    }
  }
}
