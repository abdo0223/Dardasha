import 'package:flutter/material.dart';

abstract class HomeScreenStates {}

class InitHomestate extends HomeScreenStates {}

class SendMessageSuccessState extends HomeScreenStates {}

class SendMessageErrorState extends HomeScreenStates {}

class GetMessageSuccessState extends HomeScreenStates {}

class ScrollMessageSuccessState extends HomeScreenStates {}

class GetMessageErrorState extends HomeScreenStates {}

class UploadmMessagePicLoadingState extends HomeScreenStates {}
