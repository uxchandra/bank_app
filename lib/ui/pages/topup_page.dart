import 'package:bank_app/shared/theme.dart';
import 'package:bank_app/ui/widgets/bank_item.dart';
import 'package:bank_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
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
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '0896 7636 6158',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Chandra Aditya',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BankItem(
            title: 'Bank BCA',
            imageUrl: 'assets/img_bank_bca.png',
            isSelected: true,
          ),
          const BankItem(
              title: 'BANK BNi', imageUrl: 'assets/img_bank_bni.png'),
          const BankItem(
              title: 'BANK Mandiri', imageUrl: 'assets/img_bank_mandiri.png'),
          const BankItem(
              title: 'BANK OCBC', imageUrl: 'assets/img_bank_ocbc.png'),
          const SizedBox(
            height: 12,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount-page');
            },
          ),
          const SizedBox(
            height: 57,
          )
        ],
      ),
    );
  }
}
