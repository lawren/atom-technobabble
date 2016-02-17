sentenceStart = ['Sometimes ','In practical terms, ','Since a sequence of operations can be readily changed, ','Conventionally, ','Typically, ','As one would expect, ','In most cases, ','In some cases, ','In most computers, ','In the simplest computers, ','By design, ','Since the program counter is (conceptually) just another set of memory cells, ','The set of arithmetic operations that a particular ALU supports is generally limited by the fact that ','In almost all modern computers, ','When negative numbers are required, ','In more sophisticated computers, ','In computing, ','When tasks share common processing resources, such as a CPU and main memory, ','In the case of a computer with a single CPU, ','Multitasking solves the problem by which ','When context switches occur, ','In multiprogramming systems, ','In time-sharing systems, ','In real-time systems, ','Despite the difficulty of designing and implementing cooperatively multitasked systems, ','At any specific time, ','While threads are scheduled preemptively, ','When multiple programs are present in memory, ','When a process is first created, ','If a "ready" or "waiting" process has been loaded into main memory and is awaiting execution on a CPU to be context switched by the dispatcher, ','In systems that support virtual memory, ','In any event where the process is both swapped out and blocked, ','In most Unix-like operating systems, ','In Windows PowerShell, ','On operating systems that support the SUS and POSIX standards, ','Most systems derived from BSD fail to accept the SUS and POSIX standard options because ','In some environments, ','In systems where all CPUs are not equal, ','In a single instruction stream, ','For certain types of computing applications, ','The bottleneck in the scalability of SMP using buses or crossbar switches is the simple fact that ','In all cases, ','In earlier SMP systems, ']

articleUpper = ['A ','The ']

articleLower = ['a ','the ']

singularNoun = ['engine','setting','port','variable','function','bridge','output','input','database','array','computer','hardware','disk','system','device','monitor','drive','processor','driver','program','machine','unit','architecture','microprocessor','design','multiprocessor','memory','paradigm','vector','matrix','cell','code','register','adapter','cache','peripheral','optic','slice','renderer','simulator','emulator','cryptograph','gate','automaton','semiconductor','continuum','ray','tracer','table','algorithm','complexity','parasitic capacitance','subthreshold leakage','wave','delay','controller','protocol','extension','inquiry','partition','analysis','subdivision','juncture','quandary','exigency','network','console','platform','clamp','patch','proxy','application','core','database','interface','infrastructure','schema','metadata','interface','archive','ruleset','pressure map','document','framework','cluster','codec','interpreter','methodology','webcam','workstation','transistor','resistor','debugger']

adjective = ['neural ','mechanical ','tesselation ','cellular ','quantum ','photolithographed ','artificial ','arithmo','circuit ','callable ','structured ','threaded ','hyperthreaded ','boolean-valued ','floating-point ','structured ','functional ','computational ','overhead ','overclocked ','anisotropic ','overload ','three-dimensional ','raster ','tracing ','scanline ','HDR ','particle ','volumetric ','subsurface ','bidirectional ','scattering ','distribution ','function ','HDR ','particle ','volumetric ','subsurface ','orthographic ','graphical ','ambient ','processing ','industrial ','reflection ','rendering ','visibility ','texture mapping ','shading ','bio','cloning ','polygonal ','occlusion ','illumination ','radiance ','photon ','ray tracing ','approximation ','near-field ','geometric ','clustered ','global ','directional ','thermal ','hypo','hyper','omni','bi','uni','anti','contra','semi','infra','infrared ','inter ','post-','non','pre','post','trans','ultra','dimensionless ','integrated ','guidance ','parrallel ','arithmetic logic ','bitwise ','numeral ','propagation ','temporary ','micro','macro','salient ','assimilation ','harmonization ','concatenation ','synthesizing ','auxiliary ','asynchronous ','communicative ','relational ','ubiquitous ','digital ','polymorphic ','granular ','negative ','positive ','RAID ','SSH ','mixed ','GDI ','abstraction ','obfuscation ','buffering ','encryption ','omni','bi','uni','anti','contra','semi','infra','inter','post','non','pre','dvorak ','encoding ','gamma ','802.11a ','802.11ac ']

pronoun = ['Based on','Because the',]

modalVerb = [' can ',' may ',' must ',' should ',' will ',' can not ',' should not ',' may not ',' may or may not ',' must not ',' will not ',' can ',' may ',' must ',' should ',' will ',' can not ',' should not ',' may not ',' must not ',' will not ']

verb = ['calibrate ','set ','solder ','add ','remove ','adjust ','calibrate ','typecast ','transform ','transition into ','alter ', 'conflict with ','search for ','find ','attain ','start ','interact with ','accept ','re-route ','enable ','restart ','provide a context for ','utilize ','incorporate ','facilitate ','freeze ','overload ','allow ']

adverb = ['suddenly ','occasionally ','absolutely ','actively ','affirmatively ','annually ','briefly ','certainly ','compactly ','consequently ','consistently ','constantly ','continually ','continuously ','covertly ','daily ','directly ','efficiently ','endlessly ','eventually ','evocatively ','exclusively ','extensively ','externally ','finitely ','freely ','frequently ','gradually ','hastily ','hourly ','identifiably ','immeasurably ','immediately ','immensely ','incorrectly ','independently ','indubitably ','inevitably ','infinitely ','infrequently ','instantly ','intermittently ','internally ','invariably ','irritably ','magically ','magically ','magically ','mechanically ','mockingly ','monthly ','negatively ','never ','nightly ','normally ','now ','occasionally ','periodically ','perpetually ','persistently ','physically ','digitally ','positively ','possibly ','potentially ','presumably ','promptly ','properly ','quickly ','quietly ','randomly ','rapidly ','rarely ','readily ','regularly ','repeatedly ','routinely ','scientifically ','securely ','seemingly ','separately ','significantly ','sometimes ','specifically ','sporadically ','spasmodically ','structurally ','subsequently ','successfully ','superficially ','systematically ','temporarily ','ultimately ','unanimously ','unethically ','unemotionally ','unexpectedly ','unfailingly ','unilaterally ','universally ','vertically ','visibly ','weekly ','widely ','yearly ']

preposition = ['Based on','Because the',]

conjunction = [', however, ',', but ',', though in some cases ',', likewise, ','. In addition, ','. As a result, ','. Furthermore, ','. Comparatively, ','. On the other hand, ',', but in some cases, ',', so naturally, ','. Incidentally, ',', after all, ','. An example of this can be seen in the way ','. For instance, ',', while ','. Even on computers with more than one CPU, ','. Additionally, ',', and as a consequence, ']

sentenceEnd = ['. ']

generateSentence = ->
  randomWord(sentenceStart)
  randomWord(articleLower)
  randomAdjective()
  randomWord(singularNoun)
  randomWord(modalVerb)
  randomWord(adverb)
  randomWord(verb)
  randomWord(articleLower)
  randomAdjective()
  randomWord(singularNoun)
  randomWord(sentenceEnd)


randomWord = (wordType) ->
  editor = atom.workspace.activePaneItem
  editor.insertText(wordType[Math.floor(Math.random()*wordType.length)])

randomAdjective = ->
  rngAdjective = Math.floor(Math.random() * 2 + 1)
  i = 0
  while i < rngAdjective
    randomWord adjective
    i++

module.exports =
  activate:  ->
    atom.commands.add "atom-workspace", "technobabble:generate-sentence": ->
      generateSentence()
