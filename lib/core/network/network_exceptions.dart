sealed class NetworkException implements Exception {
  final String message;
  const NetworkException([this.message = 'Network error.']);
}

class NoConnectionException extends NetworkException {
  const NoConnectionException([super.message = 'No internet connection.']);
}
class TimeoutNetworkException extends NetworkException {
  const TimeoutNetworkException([super.message = 'The request timed out.']);
}
class BadRequestException extends NetworkException {
  const BadRequestException([super.message = 'Bad request.']);
}
class UnauthorizedException extends NetworkException {
  const UnauthorizedException([super.message = 'Unauthorized request.']);
}
class ForbiddenException extends NetworkException {
  const ForbiddenException([super.message = 'Access forbidden.']);
}
class NotFoundException extends NetworkException {
  const NotFoundException([super.message = 'Requested resource not found.']);
}
class ServerErrorException extends NetworkException {
  const ServerErrorException([super.message = 'Server error occurred.']);
}
class CancelledException extends NetworkException {
  const CancelledException([super.message = 'Request was cancelled.']);
}
class SerializationException extends NetworkException {
  const SerializationException([super.message = 'Failed to parse response.']);
}
class UnknownNetworkException extends NetworkException {
  const UnknownNetworkException([super.message = 'Unknown network error.']);
}
