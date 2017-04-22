<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9a4a042a-7f12-4c71-b4fc-d7c50273c8e2(MyDsl.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="e996750b-bfdf-408e-8fdf-e6b6f722115c" name="MyDsl" version="-1" />
  </languages>
  <imports />
  <registry>
    <language id="e996750b-bfdf-408e-8fdf-e6b6f722115c" name="MyDsl">
      <concept id="8630826889558256674" name="MyDsl.structure.RestApi" flags="ng" index="21LbtL">
        <child id="8630826889558256686" name="controllers" index="21LbtX" />
      </concept>
      <concept id="8630826889558256683" name="MyDsl.structure.Controller" flags="ng" index="21LbtS">
        <child id="8630826889558300133" name="endpoints" index="21LsUQ" />
      </concept>
      <concept id="8630826889558299376" name="MyDsl.structure.Endpoint" flags="ng" index="21LsAz">
        <property id="8630826889558299383" name="uri" index="21LsA$" />
        <property id="8630826889558299381" name="method" index="21LsAA" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="21LbtL" id="7v6QPfQ0SUQ">
    <property role="TrG5h" value="TestAPI" />
    <node concept="21LbtS" id="7v6QPfQ0ULR" role="21LbtX">
      <property role="TrG5h" value="controllerA" />
      <node concept="21LsAz" id="7v6QPfQ0UM0" role="21LsUQ">
        <property role="21LsAA" value="GET" />
        <property role="21LsA$" value="/controllerA" />
      </node>
      <node concept="21LsAz" id="7v6QPfQ0UM2" role="21LsUQ">
        <property role="21LsAA" value="POST" />
        <property role="21LsA$" value="/controllerA/edit" />
      </node>
      <node concept="21LsAz" id="7v6QPfQ0UM5" role="21LsUQ">
        <property role="21LsAA" value="PATCH" />
        <property role="21LsA$" value="/controllerA/mod" />
      </node>
    </node>
    <node concept="21LbtS" id="7v6QPfQ0UMh" role="21LbtX">
      <property role="TrG5h" value="controllerB" />
      <node concept="21LsAz" id="7v6QPfQ0W9o" role="21LsUQ">
        <property role="21LsAA" value="GET" />
        <property role="21LsA$" value="/controllerB" />
      </node>
      <node concept="21LsAz" id="7v6QPfQ0W9G" role="21LsUQ">
        <property role="21LsAA" value="POST" />
        <property role="21LsA$" value="/controllerA/edit" />
      </node>
    </node>
  </node>
</model>

