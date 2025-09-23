import '../../domain/repositories/onboarding_repository.dart';
import '../sources/onboarding_local_ds.dart';

class OnboardingRepositoryLocal implements OnboardingRepository {
  OnboardingRepositoryLocal(this.local);
  final OnboardingLocalDataSource local;

  @override
  Future<bool> isCompleted() => local.getCompleted();

  @override
  Future<void> setCompleted(bool value) => local.setCompleted(value);
}