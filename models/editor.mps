<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:65f9396d-2205-4355-a2c4-45bd67c02996(MyDsl.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="7" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="vm03" ref="r:dfaaae44-d0c7-4155-adc7-03146ca2e126(MyDsl.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpch" ref="r:00000000-0000-4000-0000-011c8959028d(jetbrains.mps.lang.structure.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="7v6QPfQ0L$W">
    <ref role="1XX52x" to="vm03:7v6QPfQ0AKy" resolve="RestApi" />
    <node concept="3EZMnI" id="7v6QPfQ0QHC" role="2wV5jI">
      <node concept="3F0ifn" id="7v6QPfQ0QHO" role="3EZMnx">
        <property role="3F0ifm" value="api" />
      </node>
      <node concept="l2Vlx" id="7v6QPfQ0QHF" role="2iSdaV" />
      <node concept="3F0A7n" id="7v6QPfQ0SUV" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="7v6QPfQ0SUW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7v6QPfQ0SV5" role="3EZMnx">
        <property role="3F0ifm" value="controllers:" />
        <node concept="ljvvj" id="7v6QPfQ0SV6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7v6QPfQ0SV7" role="3EZMnx">
        <ref role="1NtTu8" to="vm03:7v6QPfQ0AKI" resolve="controllers" />
        <ref role="1k5W1q" to="tpch:24YP6ZDyde4" resolve="Keyword" />
        <node concept="lj46D" id="7v6QPfQ0SV8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7v6QPfQ0SV9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="7v6QPfQ0SVa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="7v6QPfQ0SVb" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7v6QPfQ0ThB">
    <ref role="1XX52x" to="vm03:7v6QPfQ0AKF" resolve="Controller" />
    <node concept="3EZMnI" id="7v6QPfQ0ThD" role="2wV5jI">
      <node concept="l2Vlx" id="7v6QPfQ0ThG" role="2iSdaV" />
      <node concept="3F0A7n" id="7v6QPfQ0TLx" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <ref role="1k5W1q" to="tpch:24YP6ZDyde4" resolve="Keyword" />
        <node concept="ljvvj" id="7v6QPfQ0TLy" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="7v6QPfQ0TLF" role="3EZMnx">
        <property role="3F0ifm" value="endpoints:" />
        <node concept="ljvvj" id="7v6QPfQ0TLG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="7v6QPfQ0TLH" role="3EZMnx">
        <ref role="1NtTu8" to="vm03:7v6QPfQ0Ln_" resolve="endpoints" />
        <node concept="lj46D" id="7v6QPfQ0TLI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7v6QPfQ0TLJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="7v6QPfQ0TLK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="7v6QPfQ0TLL" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7v6QPfQ0UMD">
    <ref role="1XX52x" to="vm03:7v6QPfQ0LbK" resolve="Endpoint" />
    <node concept="3EZMnI" id="7v6QPfQ0UMF" role="2wV5jI">
      <node concept="3F0ifn" id="7v6QPfQ0UMM" role="3EZMnx">
        <property role="3F0ifm" value="endpoint" />
      </node>
      <node concept="l2Vlx" id="7v6QPfQ0UMI" role="2iSdaV" />
      <node concept="3F0A7n" id="7v6QPfQ0UMS" role="3EZMnx">
        <ref role="1NtTu8" to="vm03:7v6QPfQ0LbP" resolve="method" />
      </node>
      <node concept="3F0A7n" id="7v6QPfQ0UNh" role="3EZMnx">
        <ref role="1NtTu8" to="vm03:7v6QPfQ0LbR" resolve="uri" />
        <ref role="1k5W1q" to="tpch:24YP6ZDyde4" resolve="Keyword" />
      </node>
    </node>
  </node>
</model>

