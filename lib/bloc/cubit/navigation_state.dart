part of 'navigation.dart';



class NavigationState extends Equatable {
  
  final int selectedIndexBody;
  NavigationState({
    required this.selectedIndexBody
  });

  @override
  List<Object> get props => [selectedIndexBody];
}