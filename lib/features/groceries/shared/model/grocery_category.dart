enum GroceryCategory { edible, animal, house, bathroom, other }

extension GroceryCategoryExtension on GroceryCategory {
  String get label {
    switch (this) {
      case GroceryCategory.edible:
        return 'Cibarie';
      case GroceryCategory.animal:
        return 'Animali';
      case GroceryCategory.house:
        return 'Casa';
      case GroceryCategory.bathroom:
        return 'Bagno';
      case GroceryCategory.other:
        return 'Altro';
    }
  }
}
