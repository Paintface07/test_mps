package MyDsl.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder2;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {
  /*package*/ final ConceptDescriptor myConceptController = createDescriptorForController();
  /*package*/ final ConceptDescriptor myConceptEndpoint = createDescriptorForEndpoint();
  /*package*/ final ConceptDescriptor myConceptRestApi = createDescriptorForRestApi();
  private final LanguageConceptSwitch myConceptIndex;

  public StructureAspectDescriptor() {
    myConceptIndex = new LanguageConceptSwitch();
  }

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptController, myConceptEndpoint, myConceptRestApi);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(SConceptId id) {
    switch (myConceptIndex.index(id)) {
      case LanguageConceptSwitch.Controller:
        return myConceptController;
      case LanguageConceptSwitch.Endpoint:
        return myConceptEndpoint;
      case LanguageConceptSwitch.RestApi:
        return myConceptRestApi;
      default:
        return null;
    }
  }

  /*package*/ int internalIndex(SAbstractConcept c) {
    return myConceptIndex.index(c);
  }

  private static ConceptDescriptor createDescriptorForController() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("MyDsl", "Controller", 0xe996750bbfdf408eL, 0x8fdfe6b6f722115cL, 0x77c6db53f6026c2bL);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:dfaaae44-d0c7-4155-adc7-03146ca2e126(MyDsl.structure)/8630826889558256683");
    b.aggregate("endpoints", 0x77c6db53f60315e5L).target(0xe996750bbfdf408eL, 0x8fdfe6b6f722115cL, 0x77c6db53f60312f0L).optional(true).ordered(true).multiple(true).origin("8630826889558300133").done();
    b.alias("controller");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForEndpoint() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("MyDsl", "Endpoint", 0xe996750bbfdf408eL, 0x8fdfe6b6f722115cL, 0x77c6db53f60312f0L);
    b.class_(false, false, false);
    b.origin("r:dfaaae44-d0c7-4155-adc7-03146ca2e126(MyDsl.structure)/8630826889558299376");
    b.prop("method", 0x77c6db53f60312f5L, "8630826889558299381");
    b.prop("uri", 0x77c6db53f60312f7L, "8630826889558299383");
    b.alias("endpoint");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRestApi() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("MyDsl", "RestApi", 0xe996750bbfdf408eL, 0x8fdfe6b6f722115cL, 0x77c6db53f6026c22L);
    b.class_(false, false, true);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:dfaaae44-d0c7-4155-adc7-03146ca2e126(MyDsl.structure)/8630826889558256674");
    b.aggregate("controllers", 0x77c6db53f6026c2eL).target(0xe996750bbfdf408eL, 0x8fdfe6b6f722115cL, 0x77c6db53f6026c2bL).optional(true).ordered(true).multiple(true).origin("8630826889558256686").done();
    b.alias("restapi");
    return b.create();
  }
}
