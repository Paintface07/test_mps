package MyDsl.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import org.jetbrains.annotations.NotNull;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Collections;
import jetbrains.mps.lang.smodel.ConceptSwitchIndex;
import jetbrains.mps.lang.smodel.ConceptSwitchIndexBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class EditorAspectDescriptorImpl extends EditorAspectDescriptorBase {
  @NotNull
  public Collection<ConceptEditor> getDeclaredEditors(SAbstractConcept concept) {
    SAbstractConcept cncpt = ((SAbstractConcept) concept);
    switch (index_xbvbvu_a0a.index(cncpt)) {
      case 0:
        return Collections.<ConceptEditor>singletonList(new Controller_Editor());
      case 1:
        return Collections.<ConceptEditor>singletonList(new Endpoint_Editor());
      case 2:
        return Collections.<ConceptEditor>singletonList(new RestApi_Editor());
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }



  private static final ConceptSwitchIndex index_xbvbvu_a0a = new ConceptSwitchIndexBuilder().put(MetaIdFactory.conceptId(0xe996750bbfdf408eL, 0x8fdfe6b6f722115cL, 0x77c6db53f6026c2bL), MetaIdFactory.conceptId(0xe996750bbfdf408eL, 0x8fdfe6b6f722115cL, 0x77c6db53f60312f0L), MetaIdFactory.conceptId(0xe996750bbfdf408eL, 0x8fdfe6b6f722115cL, 0x77c6db53f6026c22L)).seal();
}
