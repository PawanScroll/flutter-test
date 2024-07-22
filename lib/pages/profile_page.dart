import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stck_site/scaffolds/base_scaffold.dart';
import 'package:stck_site/store/user_content.dart';
import 'package:stck_site/models/user.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(body: Consumer<AuthStore>(
      builder: (context, authStore, child) {
        if (authStore.user != null) {
          return _buildUserProfile(context, authStore.user!, authStore);
        } else {
          return _buildSignInForm(context, authStore);
        }
      },
    ));
  }

  Widget _buildUserProfile(
      BuildContext context, User user, AuthStore authStore) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            user.name,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Text(
            user.email,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: () async {
              await authStore.signOut();
            },
            child: const Text('Sign Out'),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInForm(BuildContext context, AuthStore authStore) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign In',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 24),
          if (authStore.error != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                authStore.error!,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ),
          FilledButton(
            onPressed: authStore.isLoading
                ? null
                : () async {
                    await authStore.signIn(
                      emailController.text,
                      passwordController.text,
                    );
                  },
            child: authStore.isLoading
                ? const CircularProgressIndicator()
                : const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
