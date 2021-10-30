import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:girgitton_courier_mobile/core/theme/app_colors.dart';
import 'package:girgitton_courier_mobile/core/theme/app_text_styles.dart';

class TopProfileWidget extends StatelessWidget {
  const TopProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius:BorderRadius.circular(30),
                child: CachedNetworkImage(
                  imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ_WIjJ9MV_bPsxMTEBSyx3-Zu5pvGsDUowg&usqp=CAU',
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Kozimjon Kholmirzaev',style: styleName),
                    SizedBox(height: 8),
                    Text('+99890 001 16 10',style: styleNumber),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                  onTap: (){},
                  child: SvgPicture.asset(
                      'assets/svg/ic_logout.svg',
                      height: 22,width: 22)
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        width: 1,
                        color: AppColors.clrBorder
                    )
                ),
                child: Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                            'assets/svg/ic_balance.svg',
                            height: 17,width: 17
                        ),
                        const SizedBox(width: 8,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Balans',style: styleBalanceTitle),
                            SizedBox(height: 6),
                            Text('450 000 UZS',style: styleBalance),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(width: 8),
                    Container(height: 30,width: 1.5,color: AppColors.clrBorder),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        const Text('Oxirgi tushim',style: styleBalanceTitle,),
                        const SizedBox(height: 6),
                        Text('+45 000 UZS',style: styleBalanceTitle.copyWith(
                            color: AppColors.clrGreen
                        )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        width: 1,
                        color: AppColors.clrBorder
                    )
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                        'assets/svg/ic_checked.svg',
                        height: 17,width: 17
                    ),
                    const SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Yetkazmalar',style: styleBalanceTitle),
                        SizedBox(height: 6),
                        Text('20 ta',style: styleBalance),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
