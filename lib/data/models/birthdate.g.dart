// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birthdate.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BirthdateAdapter extends TypeAdapter<Birthdate> {
  @override
  final int typeId = 1;

  @override
  Birthdate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Birthdate(
      id: fields[0] as int,
      name: fields[1] as String,
      dateOfBirth: fields[2] as DateTime,
      dateFancyString: fields[3] as String,
      sendMeNotification: fields[4] as bool,
      earlyNotification: fields[5] as bool,
      daysEarlier: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Birthdate obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.dateOfBirth)
      ..writeByte(3)
      ..write(obj.dateFancyString)
      ..writeByte(4)
      ..write(obj.sendMeNotification)
      ..writeByte(5)
      ..write(obj.earlyNotification)
      ..writeByte(6)
      ..write(obj.daysEarlier);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BirthdateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
