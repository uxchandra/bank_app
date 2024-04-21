import 'package:bank_app/shared/theme.dart';
import 'package:bank_app/ui/widgets/buttons.dart';
import 'package:bank_app/ui/widgets/forms.dart';
import 'package:bank_app/ui/widgets/package_item.dart';
import 'package:bank_app/ui/widgets/transfer_result_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Paket Data',
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Phone Number',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomFormField(
              title: '+628',
              isShowTitle: false,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Select Package',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Wrap(
              spacing: 17,
              runSpacing: 17,
              children: [
                PackageItem(
                  amount: 10,
                  price: 100000,
                ),
                PackageItem(
                  amount: 25,
                  price: 120000,
                  isSelected: true,
                ),
                PackageItem(
                  amount: 40,
                  price: 150000,
                ),
                PackageItem(
                  amount: 99,
                  price: 200000,
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            CustomFilledButton(
              title: 'Continue',
              onPressed: () async {
                if (await Navigator.pushNamed(context, '/pin') == true) {
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/data-success', (route) => false);
                }
              },
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
