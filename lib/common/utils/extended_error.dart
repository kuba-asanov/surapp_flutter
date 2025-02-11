sealed class ExtendedError {
  const ExtendedError();
}

class NoConnectionError extends ExtendedError {
  const NoConnectionError();
}

class ParseError extends ExtendedError {
  const ParseError();
}
