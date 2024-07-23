import 'package:logging/logging.dart';

class LoggerUtils {
  static final Logger _logger = Logger('AppLogger');

  static void init() {
    Logger.root.level = Level.ALL; // Set the default logging level
    Logger.root.onRecord.listen((record) {
      print(
          '${record.level.name}: ${record.time}: ${record.loggerName}: ${record.message}');
    });
  }

  static void logInfo(String message) {
    _logger.info(message);
  }

  static void logWarning(String message) {
    _logger.warning(message);
  }

  static void logError(String message) {
    _logger.severe(message);
  }
}
