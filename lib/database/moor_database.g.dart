// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TreesTableData extends DataClass implements Insertable<TreesTableData> {
  final int id;
  final String name;
  final String image;
  final String description;
  TreesTableData(
      {@required this.id,
      @required this.name,
      @required this.image,
      @required this.description});
  factory TreesTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return TreesTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      image:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}image']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
    );
  }
  factory TreesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TreesTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
      'description': serializer.toJson<String>(description),
    };
  }

  @override
  TreesTableCompanion createCompanion(bool nullToAbsent) {
    return TreesTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  TreesTableData copyWith(
          {int id, String name, String image, String description}) =>
      TreesTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('TreesTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('image: $image, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(image.hashCode, description.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TreesTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.image == this.image &&
          other.description == this.description);
}

class TreesTableCompanion extends UpdateCompanion<TreesTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> image;
  final Value<String> description;
  const TreesTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
    this.description = const Value.absent(),
  });
  TreesTableCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String image,
    @required String description,
  })  : name = Value(name),
        image = Value(image),
        description = Value(description);
  TreesTableCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> image,
      Value<String> description}) {
    return TreesTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }
}

class $TreesTableTable extends TreesTable
    with TableInfo<$TreesTableTable, TreesTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $TreesTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 5, maxTextLength: 50);
  }

  final VerificationMeta _imageMeta = const VerificationMeta('image');
  GeneratedTextColumn _image;
  @override
  GeneratedTextColumn get image => _image ??= _constructImage();
  GeneratedTextColumn _constructImage() {
    return GeneratedTextColumn(
      'image',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, image, description];
  @override
  $TreesTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'trees_table';
  @override
  final String actualTableName = 'trees_table';
  @override
  VerificationContext validateIntegrity(TreesTableCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.image.present) {
      context.handle(
          _imageMeta, image.isAcceptableValue(d.image.value, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TreesTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TreesTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TreesTableCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.image.present) {
      map['image'] = Variable<String, StringType>(d.image.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    return map;
  }

  @override
  $TreesTableTable createAlias(String alias) {
    return $TreesTableTable(_db, alias);
  }
}

class GardeningTableData extends DataClass
    implements Insertable<GardeningTableData> {
  final int id;
  final String description;
  final String alarmTime;
  GardeningTableData(
      {@required this.id,
      @required this.description,
      @required this.alarmTime});
  factory GardeningTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return GardeningTableData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      alarmTime: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}alarm_time']),
    );
  }
  factory GardeningTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return GardeningTableData(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      alarmTime: serializer.fromJson<String>(json['alarmTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'alarmTime': serializer.toJson<String>(alarmTime),
    };
  }

  @override
  GardeningTableCompanion createCompanion(bool nullToAbsent) {
    return GardeningTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      alarmTime: alarmTime == null && nullToAbsent
          ? const Value.absent()
          : Value(alarmTime),
    );
  }

  GardeningTableData copyWith({int id, String description, String alarmTime}) =>
      GardeningTableData(
        id: id ?? this.id,
        description: description ?? this.description,
        alarmTime: alarmTime ?? this.alarmTime,
      );
  @override
  String toString() {
    return (StringBuffer('GardeningTableData(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('alarmTime: $alarmTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(id.hashCode, $mrjc(description.hashCode, alarmTime.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is GardeningTableData &&
          other.id == this.id &&
          other.description == this.description &&
          other.alarmTime == this.alarmTime);
}

class GardeningTableCompanion extends UpdateCompanion<GardeningTableData> {
  final Value<int> id;
  final Value<String> description;
  final Value<String> alarmTime;
  const GardeningTableCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.alarmTime = const Value.absent(),
  });
  GardeningTableCompanion.insert({
    this.id = const Value.absent(),
    @required String description,
    @required String alarmTime,
  })  : description = Value(description),
        alarmTime = Value(alarmTime);
  GardeningTableCompanion copyWith(
      {Value<int> id, Value<String> description, Value<String> alarmTime}) {
    return GardeningTableCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      alarmTime: alarmTime ?? this.alarmTime,
    );
  }
}

class $GardeningTableTable extends GardeningTable
    with TableInfo<$GardeningTableTable, GardeningTableData> {
  final GeneratedDatabase _db;
  final String _alias;
  $GardeningTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _alarmTimeMeta = const VerificationMeta('alarmTime');
  GeneratedTextColumn _alarmTime;
  @override
  GeneratedTextColumn get alarmTime => _alarmTime ??= _constructAlarmTime();
  GeneratedTextColumn _constructAlarmTime() {
    return GeneratedTextColumn(
      'alarm_time',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, description, alarmTime];
  @override
  $GardeningTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'gardening_table';
  @override
  final String actualTableName = 'gardening_table';
  @override
  VerificationContext validateIntegrity(GardeningTableCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (d.alarmTime.present) {
      context.handle(_alarmTimeMeta,
          alarmTime.isAcceptableValue(d.alarmTime.value, _alarmTimeMeta));
    } else if (isInserting) {
      context.missing(_alarmTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GardeningTableData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return GardeningTableData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(GardeningTableCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.alarmTime.present) {
      map['alarm_time'] = Variable<String, StringType>(d.alarmTime.value);
    }
    return map;
  }

  @override
  $GardeningTableTable createAlias(String alias) {
    return $GardeningTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TreesTableTable _treesTable;
  $TreesTableTable get treesTable => _treesTable ??= $TreesTableTable(this);
  $GardeningTableTable _gardeningTable;
  $GardeningTableTable get gardeningTable =>
      _gardeningTable ??= $GardeningTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [treesTable, gardeningTable];
}
