String? validateWeight(String? value) {
  if (value == null || value.isEmpty) return 'Weight is required';
  if (!RegExp(r'^[0-9]+([.,][0-9]+)?$').hasMatch(value)) {
    return 'Invalid weight';
  }
  return null;
}
