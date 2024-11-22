// final mxnzp
//
// final mxnzp_dictionary_local = 'https://www.mxnzp.com/api/convert/dictionary';

class Mxnzp_Def {
  static final dictionary_local = 'https://www.mxnzp.com/api/convert/dictionary';

  static final app_id = 'mrmefqejo1wrskcz';

  static final app_secret = 'NDUrbDJVSGJ0dUJiVWJhUjQwcVRNQT09';
}


class DictionaryApi {

  static final url = '${Mxnzp_Def.dictionary_local}'
      '?app_id=${Mxnzp_Def.app_id}'
      '&app_secret=${Mxnzp_Def.app_secret}'
      '&content=%char';

}