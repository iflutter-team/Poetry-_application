import 'asset_res.dart';

class StringRes{

  ///--------------introductionScreen------------------///
  static const introductionPageSkipButton = "Skip";
  static const introductionPageBottomText =
      "simply dummy text of the printing and  Lorem typesetting industry. Lorem Ipsum has been typesetting industry.";

  ///--------------loginScreen-------------------------///
  static const loginString = "Login";
  static const emailString = "Email";
  static const passWordString = "Password";
  static const doNotHaveAccountText = "Don’t  have an account?";

  ///--------------forgetPassword---------------------///
  static const forgetPassString = "Forget password";
  static const confirmPassWordString = "Confirm";
  static const createNewPassword = "Create New Password";

  ///--------------signUpScreen----------------------///
  static const signUpString = "Sign Up";
  static const fullNameString = "Full Name";
  static const agreedString = "Agreed To";
  static const termsAndConditionString = "Terms & Conditions";
  static const allTerms = 'There are many variations of passages oLorem '
      'Ipsum available, but the majority have suffered '
      'alteration in some form, by injected humour, or '
      'randomised words which don\'t look slightly believable. '
      'If you are going to use a passage of\'Lorem Ipsum, you need to be sure there isn\'t '
      'anything embarrassing hidden in the middle of '
      'text. All the Lorem Ipsum generators on the '
      'Internet tend to repeat predefined chunks as '
      'necessary, making this the first true generator '
      'on the Internet. It uses a dictionary of over 200 '
      'Latin words, combined with a handful of model '
      'sentence structures, to generate Lorem Ipsum '
      'which looks reasonable. The generated Lorem '
      'Ipsum is there fore always free from repetition, '
      'injected humour, non-characteristic words etc. '
      'There are many variations of passages oLorem '
      'Ipsum available, but the majority have suffered '
      'alteration in some form, by injected humour, or '
      'believable.\n';
  static const acceptButtonText = "I Accept";
  static const declineButtonText = "I decline";

  ///-----------------------homeScreen----------------------------///
  static const homePageAppbar = "Poetry";
  static const popularCategories = "Popular Categories";
  static const viewAll = "View All";

  static List<Map> gridViewTextList = [
    {
      'image': AssetRes.gridviewRoseImage,
      'title': "top poems",
    },
    {
      'image': AssetRes.gridviewWomanHomeImage,
      'title': "Missing You",
    },
    {
      'image': AssetRes.gridviewStrengthPeopleImage,
      'title': "Friendship",
    },
    {
      'image': AssetRes.gridviewBrideGroomImage,
      'title': "Love",
    },
  ];

  static List<Map> topPoetsList=[
    {
      'image':AssetRes.munawwarRanaImage,
      'title':StringRes.muNawWarRana,
    },
    {
      'image':AssetRes.ahmadMushtaqImage,
      'title':StringRes.ahmadMuShtaq,
    },
    {
      'image':AssetRes.kaiFiaZmiImage,
      'title':StringRes.kaiFiaZmi
    },

  ];

  static List<Map> famousBookList = [
    {
      'image': AssetRes.ofTheFemaleImage,
      'title': "Of the Flame",
    },
    {
      'image': AssetRes.waitingOrGodotImage,
      'title': "Waiting for Godot",
    },
    {
      'image': AssetRes.aThousandMorningsImage,
      'title': "FA Thousand\n   Mornings",
    },
    {
      'image': AssetRes.timeIsMotherImage,
      'title': "Time is Mother",
    },
  ];
  static const topPoets = "Top Poets";
  static const muNawWarRana="Munawwar Rana";
  static const ahmadMuShtaq="Ahmad Mushtaq";
  static const kaiFiaZmi="Kaifi azmi";
  static const poetry="Poetry";
  static const topLovePoems="Top Love Poems";
  static const topFriendshipPoems="Top Friendship Poems";
  static const famousBook="Famous Book";


}