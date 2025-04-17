// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskDataStruct extends BaseStruct {
  TaskDataStruct({
    String? referralInitiator,
    String? referralRecipient,
    String? createdDate,
    String? updatedDate,
    String? status,
  })  : _referralInitiator = referralInitiator,
        _referralRecipient = referralRecipient,
        _createdDate = createdDate,
        _updatedDate = updatedDate,
        _status = status;

  // "referral_initiator" field.
  String? _referralInitiator;
  String get referralInitiator => _referralInitiator ?? '';
  set referralInitiator(String? val) => _referralInitiator = val;

  bool hasReferralInitiator() => _referralInitiator != null;

  // "referral_recipient" field.
  String? _referralRecipient;
  String get referralRecipient => _referralRecipient ?? '';
  set referralRecipient(String? val) => _referralRecipient = val;

  bool hasReferralRecipient() => _referralRecipient != null;

  // "created_date" field.
  String? _createdDate;
  String get createdDate => _createdDate ?? '';
  set createdDate(String? val) => _createdDate = val;

  bool hasCreatedDate() => _createdDate != null;

  // "updated_date" field.
  String? _updatedDate;
  String get updatedDate => _updatedDate ?? '';
  set updatedDate(String? val) => _updatedDate = val;

  bool hasUpdatedDate() => _updatedDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static TaskDataStruct fromMap(Map<String, dynamic> data) => TaskDataStruct(
        referralInitiator: data['referral_initiator'] as String?,
        referralRecipient: data['referral_recipient'] as String?,
        createdDate: data['created_date'] as String?,
        updatedDate: data['updated_date'] as String?,
        status: data['status'] as String?,
      );

  static TaskDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? TaskDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'referral_initiator': _referralInitiator,
        'referral_recipient': _referralRecipient,
        'created_date': _createdDate,
        'updated_date': _updatedDate,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'referral_initiator': serializeParam(
          _referralInitiator,
          ParamType.String,
        ),
        'referral_recipient': serializeParam(
          _referralRecipient,
          ParamType.String,
        ),
        'created_date': serializeParam(
          _createdDate,
          ParamType.String,
        ),
        'updated_date': serializeParam(
          _updatedDate,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static TaskDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      TaskDataStruct(
        referralInitiator: deserializeParam(
          data['referral_initiator'],
          ParamType.String,
          false,
        ),
        referralRecipient: deserializeParam(
          data['referral_recipient'],
          ParamType.String,
          false,
        ),
        createdDate: deserializeParam(
          data['created_date'],
          ParamType.String,
          false,
        ),
        updatedDate: deserializeParam(
          data['updated_date'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TaskDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TaskDataStruct &&
        referralInitiator == other.referralInitiator &&
        referralRecipient == other.referralRecipient &&
        createdDate == other.createdDate &&
        updatedDate == other.updatedDate &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [referralInitiator, referralRecipient, createdDate, updatedDate, status]);
}

TaskDataStruct createTaskDataStruct({
  String? referralInitiator,
  String? referralRecipient,
  String? createdDate,
  String? updatedDate,
  String? status,
}) =>
    TaskDataStruct(
      referralInitiator: referralInitiator,
      referralRecipient: referralRecipient,
      createdDate: createdDate,
      updatedDate: updatedDate,
      status: status,
    );
