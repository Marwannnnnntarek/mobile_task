import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_task/features/post/data/models/post_model/post_model.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitial());
}
