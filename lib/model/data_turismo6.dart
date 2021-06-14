import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:turismo_flutter/pages/viewturista_table6.dart';

class ViewTURISM {
  //Declaración de variables para almacenamiento en base de datos
  //Tabla 6

  int _id_estado_conservacion = 0;
  bool si_estado_conservacion = false;
  bool _no_estado_conservacion = false;
  bool _s_i_estado_conservacion = false;
  //Tabla 6.1
  int _id_atractivo_U = 0;
  bool _atractivo_U = false;
  bool _conservado_atractivo_U = false;
  bool _alterado_atractivo_U = false;
  bool _deterioro_atractivo_U = false;
  bool _deteriorado_atractivo_U = false;
  String _observaciones_atractivo_U = "";
  //Tabla 6.1.1
  int _id_factores_alteracion_atractivo = 0;
  bool _erosion_M_fac = false;
  bool _humedad_M_fac = false;
  bool _desastres_naturales_M_fac = false;
  bool _flora_fauna_M_fac = false;
  bool _clima_M_fac = false;
  bool _actividades_agricolas_M_fac = false;
  bool _actividades_forestales_M_fac = false;
  bool _actividades_minera_M_fac = false;
  bool _actividades_industriales_M_fac = false;
  bool _neglicencia_M_fac = false;
  bool _huaqueria_M_fac = false;
  bool _conflictos_tenencia_M_fac = false;
  bool _condiciones_uso_M_fac = false;
  bool _falta_mantenimiento_M_fac = false;
  bool _contaminacion_ambiente_M_fac = false;
  bool _generacion_residuos_M_fac = false;
  bool _expansion_urbana_M_fac = false;
  bool _conflicto_poliico_social_M_fac = false;
  bool _desarrollo_industrial_M_fac = false;
  bool _vandalismo_M_fac = false;
  bool _otro_M_fac = false;
  String _especifique_M_fac = "";
  String _observaciones_M_fac = "";
  //Tabla 6.2
  int _id_entorno_U = 0;
  bool _entorno_U = false;
  bool _conservado_entorno_U = false;
  bool _alterado_entorno_U = false;
  bool _deterioro_entorno_U = false;
  bool _deteriorado_entorno_U = false;
  String _observaciones_entorno_U = "";
  //Tabla 6.2.1
  int _id_factores_alteracion_entorno = 0;
  bool _erosion_M_ent = false;
  bool _humedad_M_ent = false;
  bool _desastres_naturales_M_ent = false;
  bool _flora_fauna_M_ent = false;
  bool _clima_M_ent = false;
  bool _actividades_agricolas_M_ent = false;
  bool _actividades_forestales_M_ent = false;
  bool _actividades_minera_M_ent = false;
  bool _actividades_industriales_M_ent = false;
  bool _neglicencia_M_ent = false;
  bool _huaqueria_M_ent = false;
  bool _conflictos_tenencia_M_ent = false;
  bool _condiciones_uso_M_ent = false;
  bool _falta_mantenimiento_M_ent = false;
  bool _contaminacion_ambiente_M_ent = false;
  bool _generacion_residuos_M_ent = false;
  bool _expansion_urbana_M_ent = false;
  bool _conflicto_poliico_social_M_ent = false;
  bool _desarrollo_industrial_M_ent = false;
  bool _vandalismo_M_ent = false;
  bool _otro_M_ent = false;
  String _especifique_M_ent = "";
  String _observaciones_M_ent = "";
  //Tabla 6.3
  int _id_declaratoria = 0;
  bool _declaratoria_espacio = false;
  String _declarante_espacio = "";
  String _denominacion_espacio = "";
  final _fecha_declaracion_espacio = new DateTime.now();
  String _alcance_espacio = "";
  String _observaciones_espacio = "";
  //Logica
  ViewTURISM(
      //Declaracion de los id's para cada una de las tablas derivadas de la n° 6
      this._id_estado_conservacion, this._id_atractivo_U, this._id_entorno_U, this._id_factores_alteracion_entorno,
      this._id_factores_alteracion_atractivo, this._id_declaratoria, //Declaratoria n° 6
      this.si_estado_conservacion, this._no_estado_conservacion, this._s_i_estado_conservacion, //Declaratoria n°6.1
      this._atractivo_U, this._conservado_atractivo_U, this._alterado_atractivo_U, this._deterioro_atractivo_U,
      this._deteriorado_atractivo_U, //Declaratoria n°6.1.1
      this._erosion_M_fac, this._humedad_M_fac, this._desastres_naturales_M_fac, this._flora_fauna_M_fac, this._clima_M_fac,
      this._actividades_agricolas_M_fac, this._actividades_forestales_M_fac, this._actividades_minera_M_fac, this._actividades_industriales_M_fac,
      this._neglicencia_M_fac, this._huaqueria_M_fac, this._conflictos_tenencia_M_fac, this._condiciones_uso_M_fac, this._falta_mantenimiento_M_fac,
      this._contaminacion_ambiente_M_fac, this._generacion_residuos_M_fac, this._expansion_urbana_M_fac, this._conflicto_poliico_social_M_fac,
      this._desarrollo_industrial_M_fac, this._vandalismo_M_fac, this._otro_M_fac, this._especifique_M_fac, this._observaciones_M_fac, //Declaratoria 6.2
      this._entorno_U, this._conservado_entorno_U, this._alterado_entorno_U, this._deterioro_entorno_U, this._deteriorado_entorno_U, //Declaratoria 6.2.1
      this._erosion_M_ent, this._humedad_M_ent, this._desastres_naturales_M_ent, this._flora_fauna_M_ent, this._clima_M_ent,
      this._actividades_agricolas_M_ent, this._actividades_forestales_M_ent, this._actividades_minera_M_ent, this._actividades_industriales_M_ent,
      this._neglicencia_M_ent, this._huaqueria_M_ent, this._conflictos_tenencia_M_ent, this._condiciones_uso_M_ent, this._falta_mantenimiento_M_ent,
      this._contaminacion_ambiente_M_ent, this._generacion_residuos_M_ent, this._expansion_urbana_M_ent, this._conflicto_poliico_social_M_ent,
      this._desarrollo_industrial_M_ent, this._vandalismo_M_ent, this._otro_M_ent, this._especifique_M_ent, this._observaciones_M_ent, //Declaratoria n°6.3
      this._declaratoria_espacio, this._declarante_espacio, this._denominacion_espacio, this._alcance_espacio, this._observaciones_espacio
      );
  /*
  //Mapeo
  ViewTURISM.map(dynamic obj) {
    this.si_estado_conservacion = obj['si_estado_conservacion'];
    this._no_estado_conservacion = obj['no_estado_conservacion'];
    this._s_i_estado_conservacion = obj['s_i_estado_conservacion'];
    this._atractivo_U = obj['atractivo_U'];
    this._conservado_atractivo_U = obj['conservado_atractivo_U'];
    this._alterado_atractivo_U = obj['alterado_atractivo_U'];
    this._deterioro_atractivo_U = obj['deterioro_atractivo_U'];
    this._deteriorado_atractivo_U = obj['deteriorado_atractivo_U'];
    this._erosion_M_fac = obj['erosion_M_fac'];
    this._humedad_M_fac = obj['humedad_M_fac'];
    this._desastres_naturales_M_fac = obj['desastres_naturales_M_fac'];
    this._flora_fauna_M_fac = obj['flora_fauna_M_fac'];
    this._clima_M_fac = obj['clima_M_fac'];
    this._actividades_agricolas_M_fac = obj['actividades_agricolas_M_fac'];
    this._actividades_forestales_M_fac = obj['actividades_forestales_M_fac'];
    this._actividades_minera_M_fac = obj['actividades_minera_M_fac'];
    this._actividades_industriales_M_fac = obj['actividades_industriales_M_fac'];
    this._neglicencia_M_fac = obj['neglicencia_M_fac'];
    this._huaqueria_M_fac = obj['huaqueria_M_fac'];
    this._conflictos_tenencia_M_fac = obj['conflictos_tenencia_M_fac'];
    this._condiciones_uso_M_fac = obj['condiciones_uso_M_fac'];
    this._falta_mantenimiento_M_fac = obj['falta_mantenimiento_M_fac'];
    this._contaminacion_ambiente_M_fac = obj['contaminacion_ambiente_M_fac'];
    this._generacion_residuos_M_fac = obj['generacion_residuos_M_fac'];
    this._expansion_urbana_M_fac = obj['expansion_urbana_M_fac'];
    this._conflicto_poliico_social_M_fac = obj['conflicto_poliico_social_M_fac'];
    this._desarrollo_industrial_M_fac = obj['desarrollo_industrial_M_fac'];
    this._vandalismo_M_fac = obj['vandalismo_M_fac'];
    this._otro_M_fac = obj['otro_M_fac'];
    this._especifique_M_fac = obj['especifique_M_fac'];
    this._observaciones_M_fac = obj['observaciones_M_fac'];
    this._erosion_M_ent = obj['erosion_M_ent'];
    this._humedad_M_ent = obj['humedad_M_ent'];
    this._desastres_naturales_M_ent = obj['desastres_naturales_M_ent'];
    this._flora_fauna_M_ent = obj['flora_fauna_M_ent'];
    this._clima_M_ent = obj['clima_M_ent'];
    this._actividades_agricolas_M_ent = obj['actividades_agricolas_M_ent'];
    this._actividades_forestales_M_ent = obj['actividades_forestales_M_ent'];
    this._actividades_minera_M_ent = obj['actividades_minera_M_ent'];
    this._actividades_industriales_M_ent = obj['actividades_industriales_M_ent'];
    this._neglicencia_M_ent = obj['neglicencia_M_ent'];
    this._huaqueria_M_ent = obj['huaqueria_M_ent'];
    this._conflictos_tenencia_M_ent = obj['conflictos_tenencia_M_ent'];
    this._condiciones_uso_M_ent = obj['condiciones_uso_M_ent'];
    this._falta_mantenimiento_M_ent = obj['falta_mantenimiento_M_ent'];
    this._contaminacion_ambiente_M_ent = obj['contaminacion_ambiente_M_ent'];
    this._generacion_residuos_M_ent = obj['generacion_residuos_M_ent'];
    this._expansion_urbana_M_ent = obj['expansion_urbana_M_ent'];
    this._conflicto_poliico_social_M_ent = obj['conflicto_poliico_social_M_ent'];
    this._desarrollo_industrial_M_ent = obj['desarrollo_industrial_M_ent'];
    this._vandalismo_M_ent = obj['vandalismo_M_ent'];
    this._otro_M_ent = obj['otro_M_ent'];
    this._especifique_M_ent = obj['especifique_M_ent'];
    this._observaciones_M_ent = obj['observaciones_M_ent'];
    this._declaratoria_espacio = obj['declaratoria_espacio'];
    this._declarante_espacio = obj['declarante_espacio'];
    this._denominacion_espacio = obj['denominacion_espacio'];
    this._alcance_espacio = obj['alcance_espacio'];
    this._observaciones_espacio = obj['observaciones_espacio'];
  }

  int get id_estado_conservacion => _id_estado_conservacion;
  int get id_atractivo_U => _id_atractivo_U;
  int get id_factores_alteracion_atractivo => _id_factores_alteracion_atractivo;
  int get id_entorno_U => _id_entorno_U;
  int get id_factores_alteracion_entorno => _id_factores_alteracion_entorno;
  int get id_declaratoria => _id_declaratoria;
  bool get si_estado_conservacion => si_estado_conservacion;
  bool get no_estado_conservacion => _no_estado_conservacion;
  bool get s_i_estado_conservacion => _s_i_estado_conservacion;
  bool get atractivo_U => _atractivo_U;
  bool get conservado_atractivo_U => _conservado_atractivo_U;
  bool get alterado_atractivo_U => _alterado_atractivo_U;
  bool get deterioro_atractivo_U => _deterioro_atractivo_U;
  bool get deteriorado_atractivo_U => _deteriorado_atractivo_U;
  String get observaciones_atractivo_U => _observaciones_atractivo_U;
  bool get erosion_M_fac => _erosion_M_fac;
  bool get humedad_M_fac => _humedad_M_fac;
  bool get desastres_naturales_M_fac => _desastres_naturales_M_fac;
  bool get flora_fauna_M_fac => _flora_fauna_M_fac;
  bool get clima_M_fac => _clima_M_fac;
  bool get actividades_agricolas_M_fac => _actividades_agricolas_M_fac;
  bool get actividades_forestales_M_fac => _actividades_forestales_M_fac;
  bool get actividades_minera_M_fac => _actividades_minera_M_fac;
  bool get actividades_industriales_M_fac => _actividades_industriales_M_fac;
  bool get neglicencia_M_fac => _neglicencia_M_fac;
  bool get huaqueria_M_fac => _huaqueria_M_fac;
  bool get conflictos_tenencia_M_fac => _conflictos_tenencia_M_fac;
  bool get condiciones_uso_M_fac => _condiciones_uso_M_fac;
  bool get falta_mantenimiento_M_fac => _falta_mantenimiento_M_fac;
  bool get contaminacion_ambiente_M_fac => _contaminacion_ambiente_M_fac;
  bool get generacion_residuos_M_fac => _generacion_residuos_M_fac;
  bool get expansion_urbana_M_fac => _expansion_urbana_M_fac;
  bool get conflicto_poliico_social_M_fac => _conflicto_poliico_social_M_fac;
  bool get desarrollo_industrial_M_fac => _desarrollo_industrial_M_fac;
  bool get vandalismo_M_fac => _vandalismo_M_fac;
  bool get otro_M_fac => _otro_M_fac;
  String get especifique_M_fac => _especifique_M_fac;
  String get observaciones_M_fac => _observaciones_M_fac;
  bool get entorno_U => _entorno_U;
  bool get conservado_entorno_U => _conservado_entorno_U;
  bool get alterado_entorno_U => _alterado_entorno_U;
  bool get deterioro_entorno_U => _deterioro_entorno_U;
  bool get deteriorado_entorno_U => _deteriorado_entorno_U;
  String get observaciones_entorno_U => _observaciones_entorno_U;
  bool get erosion_M_ent => _erosion_M_ent;
  bool get humedad_M_ent => _humedad_M_ent;
  bool get desastres_naturales_M_ent => _desastres_naturales_M_ent;
  bool get flora_fauna_M_ent => _flora_fauna_M_ent;
  bool get clima_M_ent => _clima_M_ent;
  bool get actividades_agricolas_M_ent => _actividades_agricolas_M_ent;
  bool get actividades_forestales_M_ent => _actividades_forestales_M_ent;
  bool get actividades_minera_M_ent => _actividades_minera_M_ent;
  bool get actividades_industriales_M_ent => _actividades_industriales_M_ent;
  bool get neglicencia_M_ent => _neglicencia_M_ent;
  bool get huaqueria_M_ent => _huaqueria_M_ent;
  bool get conflictos_tenencia_M_ent => _conflictos_tenencia_M_ent;
  bool get condiciones_uso_M_ent => _condiciones_uso_M_ent;
  bool get falta_mantenimiento_M_ent => _falta_mantenimiento_M_ent;
  bool get contaminacion_ambiente_M_ent => _contaminacion_ambiente_M_ent;
  bool get generacion_residuos_M_ent => _generacion_residuos_M_ent;
  bool get expansion_urbana_M_ent => _expansion_urbana_M_ent;
  bool get conflicto_poliico_social_M_ent => _conflicto_poliico_social_M_ent;
  bool get desarrollo_industrial_M_ent => _desarrollo_industrial_M_ent;
  bool get vandalismo_M_ent => _vandalismo_M_ent;
  bool get otro_M_ent => _otro_M_ent;
  String get especifique_M_ent => _especifique_M_ent;
  String get observaciones_M_ent => _observaciones_M_ent;
  bool get declaratoria_espacio => _declaratoria_espacio;
  String get declarante_espacio => _declarante_espacio;
  String get denominacion_espacio => _denominacion_espacio;
  String get alcance_espacio => _alcance_espacio;
  String get observaciones_espacio => _observaciones_espacio;

  ViewTURISM.fromSnapShop(DataSnapshot snapshot) {
    _id_estado_conservacion = snapshot.key as int;
    _id_atractivo_U = snapshot.key as int;
    _id_factores_alteracion_atractivo = snapshot.key as int;
    _id_entorno_U = snapshot.key as int;
    _id_factores_alteracion_entorno = snapshot.key as int;
    _id_declaratoria = snapshot.key as int;
    si_estado_conservacion = snapshot.value['si_estado_conservacion'];
    _no_estado_conservacion = snapshot.value['no_estado_conservacion'];
    _s_i_estado_conservacion = snapshot.value['s_i_estado_conservacion'];
    _atractivo_U = snapshot.value['atractivo_U'];
    _conservado_atractivo_U = snapshot.value['conservado_atractivo_U'];
    _alterado_atractivo_U = snapshot.value['alterado_atractivo_U'];
    _deterioro_atractivo_U = snapshot.value['deterioro_atractivo_U'];
    _deteriorado_atractivo_U = snapshot.value['deteriorado_atractivo_U'];
    _erosion_M_fac = snapshot.value['erosion_M_fac'];
    _humedad_M_fac = snapshot.value['humedad_M_fac'];
    _desastres_naturales_M_fac = snapshot.value['desastres_naturales_M_fac'];
    _flora_fauna_M_fac = snapshot.value['flora_fauna_M_fac'];
    _clima_M_fac = snapshot.value['clima_M_fac'];
    _actividades_agricolas_M_fac = snapshot.value['actividades_agricolas_M_fac'];
    _actividades_forestales_M_fac = snapshot.value['actividades_forestales_M_fac'];
    _actividades_minera_M_fac = snapshot.value['actividades_minera_M_fac'];
    _actividades_industriales_M_fac = snapshot.value['actividades_industriales_M_fac'];
    _neglicencia_M_fac = snapshot.value['neglicencia_M_fac'];
    _huaqueria_M_fac = snapshot.value['huaqueria_M_fac'];
    _conflictos_tenencia_M_fac = snapshot.value['conflictos_tenencia_M_fac'];
    _condiciones_uso_M_fac = snapshot.value['condiciones_uso_M_fac'];
    _falta_mantenimiento_M_fac = snapshot.value['falta_mantenimiento_M_fac'];
    _contaminacion_ambiente_M_fac = snapshot.value['contaminacion_ambiente_M_fac'];
    _generacion_residuos_M_fac = snapshot.value['generacion_residuos_M_fac'];
    _expansion_urbana_M_fac = snapshot.value['expansion_urbana_M_fac'];
    _conflicto_poliico_social_M_fac = snapshot.value['conflicto_poliico_social_M_fac'];
    _desarrollo_industrial_M_fac = snapshot.value['desarrollo_industrial_M_fac'];
    _vandalismo_M_fac = snapshot.value['vandalismo_M_fac'];
    _otro_M_fac = snapshot.value['otro_M_fac'];
    _especifique_M_fac = snapshot.value['especifique_M_fac'];
    _observaciones_M_fac = snapshot.value['observaciones_M_fac'];
    _erosion_M_ent = snapshot.value['erosion_M_ent'];
    _humedad_M_ent = snapshot.value['humedad_M_ent'];
    _desastres_naturales_M_ent = snapshot.value['desastres_naturales_M_ent'];
    _flora_fauna_M_ent = snapshot.value['flora_fauna_M_ent'];
    _clima_M_ent = snapshot.value['clima_M_ent'];
    _actividades_agricolas_M_ent = snapshot.value['actividades_agricolas_M_ent'];
    _actividades_forestales_M_ent = snapshot.value['actividades_forestales_M_ent'];
    _actividades_minera_M_ent = snapshot.value['actividades_minera_M_ent'];
    _actividades_industriales_M_ent = snapshot.value['actividades_industriales_M_ent'];
    _neglicencia_M_ent = snapshot.value['neglicencia_M_ent'];
    _huaqueria_M_ent = snapshot.value['huaqueria_M_ent'];
    _conflictos_tenencia_M_ent = snapshot.value['conflictos_tenencia_M_ent'];
    _condiciones_uso_M_ent = snapshot.value['condiciones_uso_M_ent'];
    _falta_mantenimiento_M_ent = snapshot.value['falta_mantenimiento_M_ent'];
    _contaminacion_ambiente_M_ent = snapshot.value['contaminacion_ambiente_M_ent'];
    _generacion_residuos_M_ent = snapshot.value['generacion_residuos_M_ent'];
    _expansion_urbana_M_ent = snapshot.value['expansion_urbana_M_ent'];
    _conflicto_poliico_social_M_ent = snapshot.value['conflicto_poliico_social_M_ent'];
    _desarrollo_industrial_M_ent = snapshot.value['desarrollo_industrial_M_ent'];
    _vandalismo_M_ent = snapshot.value['vandalismo_M_ent'];
    _otro_M_ent = snapshot.value['otro_M_ent'];
    _especifique_M_ent = snapshot.value['especifique_M_ent'];
    _observaciones_M_ent = snapshot.value['observaciones_M_ent'];
    _declaratoria_espacio = snapshot.value['declaratoria_espacio'];
    _declarante_espacio = snapshot.value['declarante_espacio'];
    _denominacion_espacio = snapshot.value['denominacion_espacio'];
    _alcance_espacio = snapshot.value['alcance_espacio'];
    _observaciones_espacio = snapshot.value['observaciones_espacio'];

  }

   */
}
