part of blocs.auth;

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  @override
  final AuthState state;

  AuthBloc({
    this.state,
  }) : super(null) {
    assert(state != null);
  }

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    throw UnimplementedError();
  }
}
