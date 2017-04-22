<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:dfaaae44-d0c7-4155-adc7-03146ca2e126(MyDsl.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="3" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="7v6QPfQ0AKy">
    <property role="EcuMT" value="8630826889558256674" />
    <property role="TrG5h" value="RestApi" />
    <property role="R4oN_" value="A collection of Spring controllers for the described REST API." />
    <property role="19KtqR" value="true" />
    <property role="34LRSv" value="restapi" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7v6QPfQ0AK_" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7v6QPfQ0AKI" role="1TKVEi">
      <property role="IQ2ns" value="8630826889558256686" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="controllers" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7v6QPfQ0AKF" resolve="Controller" />
    </node>
  </node>
  <node concept="1TIwiD" id="7v6QPfQ0AKF">
    <property role="EcuMT" value="8630826889558256683" />
    <property role="TrG5h" value="Controller" />
    <property role="34LRSv" value="controller" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="7v6QPfQ0AKG" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyj" id="7v6QPfQ0Ln_" role="1TKVEi">
      <property role="IQ2ns" value="8630826889558300133" />
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="endpoints" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="7v6QPfQ0LbK" resolve="Endpoint" />
    </node>
  </node>
  <node concept="1TIwiD" id="7v6QPfQ0LbK">
    <property role="EcuMT" value="8630826889558299376" />
    <property role="TrG5h" value="Endpoint" />
    <property role="34LRSv" value="endpoint" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="7v6QPfQ0LbP" role="1TKVEl">
      <property role="IQ2nx" value="8630826889558299381" />
      <property role="TrG5h" value="method" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7v6QPfQ0LbR" role="1TKVEl">
      <property role="IQ2nx" value="8630826889558299383" />
      <property role="TrG5h" value="uri" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

