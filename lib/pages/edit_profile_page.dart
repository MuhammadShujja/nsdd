import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nsdd/models/city.dart';
import 'package:nsdd/models/country.dart';

import '../utils/constants.dart';
import '../utils/file_path.dart';

class EditProfilePage extends StatelessWidget {
  EditProfilePage({Key? key}) : super(key: key);
  final _globalKeyProfileForm = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get genderDropdownItems {
    return [
      const DropdownMenuItem(value: 'Male', child: Text('Male')),
      const DropdownMenuItem(value: 'Female', child: Text('Female')),
      const DropdownMenuItem(value: 'Other', child: Text('Other')),
    ];
  }

  List<DropdownMenuItem<String>> get fatherOccupationDropdownItems {
    return [
      const DropdownMenuItem(
        value: 'Govt Servant/Retired',
        child: Text('Govt Servant/Retired'),
      ),
      const DropdownMenuItem(
        value: 'Pak Army Servant/Retired',
        child: Text('Pak Army Servant/Retired'),
      ),
      const DropdownMenuItem(
        value: 'Pak Air Force Servant/Retired',
        child: Text('Pak Air Force Servant/Retired'),
      ),
      const DropdownMenuItem(
        value: 'Pak Navy Servant/Retired',
        child: Text('Pak Navy Servant/Retired'),
      ),
      const DropdownMenuItem(
        value: 'Businessman',
        child: Text('Businessman'),
      ),
      const DropdownMenuItem(
        value: 'Other',
        child: Text('Other'),
      ),
    ];
  }

  List<DropdownMenuItem<Country>> get countryDropdownItems {
    return [
      DropdownMenuItem(
        value: Country(id: 1, code: '+92', name: 'Pakistan'),
        child: const Text('Pakistan'),
      ),
    ];
  }

  List<DropdownMenuItem<City>> get cityDropdownItems {
    return [
      DropdownMenuItem(
        value: City(id: 1, name: 'Islamabad'),
        child: const Text('Islamabad'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              FilePath.topRightCornerBg(context),
              height: 152.h,
              width: 222.w,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: kPagePadding,
              child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: _globalKeyProfileForm,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Profile',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          readOnly: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.pin),
                            hintText: '34102-1234567-3',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Enter full name',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Enter short name',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Enter email address',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          readOnly: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            hintText: '0321-1234567',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            hintText: 'Other contact no',
                          ),
                        ),
                        kPageItemSpacing,
                        DropdownButtonFormField<String>(
                          items: genderDropdownItems,
                          onChanged: (String? value) {},
                          // value: selectedGender,
                          validator: (value) =>
                              value == null ? 'Choose gender' : null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.wc),
                            hintText: 'Choose gender',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          readOnly: true,
                          keyboardType: TextInputType.none,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.wysiwyg),
                            hintText: 'Date of Birth',
                            suffixIcon: Icon(Icons.date_range),
                          ),
                          onTap: () {},
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Enter father/guardian name',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            hintText: 'Father/guardian contact no',
                          ),
                        ),
                        kPageItemSpacing,
                        DropdownButtonFormField<String>(
                          items: fatherOccupationDropdownItems,
                          onChanged: (String? value) {},
                          // value: selectedOccupation,
                          validator: (value) => value == null
                              ? 'Choose father/guardian occupation'
                              : null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_pin_rounded),
                            hintText: 'Choose father/guardian occupation',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.location_on),
                            hintText: 'Enter postal address',
                          ),
                        ),
                        kPageItemSpacing,
                        TextFormField(
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.location_on),
                            hintText: 'Enter permanent address',
                          ),
                        ),
                        kPageItemSpacing,
                        DropdownButtonFormField<City>(
                          items: cityDropdownItems,
                          onChanged: (City? value) {},
                          // value: selectedGender,
                          validator: (value) =>
                              value == null ? 'Choose domicile district' : null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.location_city),
                            hintText: 'Choose domicile district',
                          ),
                        ),
                        kPageItemSpacing,
                        CheckboxListTile(
                          value: true,
                          onChanged: (bool? checked) {},
                          title: Text(
                            'Minority',
                          ),
                          secondary:
                              const Icon(Icons.transfer_within_a_station),
                          tileColor: Theme.of(context).colorScheme.background,
                          shape: kOutlineInputBorderShape,
                          activeColor: Theme.of(context).colorScheme.primary,
                        ),
                        kPageItemSpacing,
                        CheckboxListTile(
                          value: false,
                          onChanged: (bool? checked) {},
                          title: Text(
                            'Disablity',
                          ),
                          secondary: const Icon(Icons.wheelchair_pickup),
                          tileColor: Theme.of(context).colorScheme.background,
                          shape: kOutlineInputBorderShape,
                          activeColor: Theme.of(context).colorScheme.primary,
                        ),
                        kPageItemSpacing,
                        DropdownButtonFormField<Country>(
                          items: countryDropdownItems,
                          onChanged: (Country? value) {},
                          // value: selectedGender,
                          validator: (value) =>
                              value == null ? 'Choose other nationality' : null,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.add_location_alt),
                            hintText: 'Choose other nationality',
                          ),
                        ),
                        kPageItemSpacing2,
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Save',
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                        ),
                        kPageItemSpacing,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
