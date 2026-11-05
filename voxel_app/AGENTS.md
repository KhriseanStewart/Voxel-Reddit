# Flutter app guidance

- Keep the app mobile-first and support Android and iOS only.
- Follow the existing Material 3 theme and responsive layout patterns.
- Keep UI code in `lib/`; add tests under `test/`.
- Use Flutter and Dart APIs rather than Expo, React Native, or JavaScript tooling.

## Validation

Run these commands before completing app changes:

```bash
flutter analyze
flutter test
```
