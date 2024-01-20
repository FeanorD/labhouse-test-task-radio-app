part of 'radio_stations_bloc.dart';

@freezed
class RadioStationsEvent with _$RadioStationsEvent {
  const factory RadioStationsEvent.load() = _LoadStationsEvent;
  const factory RadioStationsEvent.loadMore() = _LoadMoreStationsEvent;
}
