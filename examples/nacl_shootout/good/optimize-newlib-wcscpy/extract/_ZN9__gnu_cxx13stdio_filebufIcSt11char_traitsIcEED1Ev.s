  .text
  .globl _ZN9__gnu_cxx13stdio_filebufIcSt11char_traitsIcEED1Ev
  .type _ZN9__gnu_cxx13stdio_filebufIcSt11char_traitsIcEED1Ev, @function

#! file-offset 0xa4560
#! rip-offset  0x64560
#! capacity    288 bytes

# Text                                                      #  Line  RIP      Bytes  Opcode              
._ZN9__gnu_cxx13stdio_filebufIcSt11char_traitsIcEED1Ev:     #        0x64560  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                    #  1     0x64560  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                           #  2     0x64565  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                     #  3     0x64567  5      OPC=movq_m64_r64    
  movl %ebx, %edi                                           #  4     0x6456c  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                          #  5     0x6456e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                           #  6     0x64571  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                           #  7     0x64574  2      OPC=movl_r32_r32    
  movl $0x1003e368, (%r15,%rbx,1)                           #  8     0x64576  8      OPC=movl_m32_imm32  
  xchgw %ax, %ax                                            #  9     0x6457e  2      OPC=xchgw_ax_r16    
  nop                                                       #  10    0x64580  1      OPC=nop             
  nop                                                       #  11    0x64581  1      OPC=nop             
  nop                                                       #  12    0x64582  1      OPC=nop             
  nop                                                       #  13    0x64583  1      OPC=nop             
  nop                                                       #  14    0x64584  1      OPC=nop             
  nop                                                       #  15    0x64585  1      OPC=nop             
  nop                                                       #  16    0x64586  1      OPC=nop             
  nop                                                       #  17    0x64587  1      OPC=nop             
  nop                                                       #  18    0x64588  1      OPC=nop             
  nop                                                       #  19    0x64589  1      OPC=nop             
  nop                                                       #  20    0x6458a  1      OPC=nop             
  nop                                                       #  21    0x6458b  1      OPC=nop             
  nop                                                       #  22    0x6458c  1      OPC=nop             
  nop                                                       #  23    0x6458d  1      OPC=nop             
  nop                                                       #  24    0x6458e  1      OPC=nop             
  nop                                                       #  25    0x6458f  1      OPC=nop             
  nop                                                       #  26    0x64590  1      OPC=nop             
  nop                                                       #  27    0x64591  1      OPC=nop             
  nop                                                       #  28    0x64592  1      OPC=nop             
  nop                                                       #  29    0x64593  1      OPC=nop             
  nop                                                       #  30    0x64594  1      OPC=nop             
  nop                                                       #  31    0x64595  1      OPC=nop             
  nop                                                       #  32    0x64596  1      OPC=nop             
  nop                                                       #  33    0x64597  1      OPC=nop             
  nop                                                       #  34    0x64598  1      OPC=nop             
  nop                                                       #  35    0x64599  1      OPC=nop             
  nop                                                       #  36    0x6459a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv  #  37    0x6459b  5      OPC=callq_label     
  leal 0x34(%rbx), %edi                                     #  38    0x645a0  3      OPC=leal_r32_m16    
  nop                                                       #  39    0x645a3  1      OPC=nop             
  nop                                                       #  40    0x645a4  1      OPC=nop             
  nop                                                       #  41    0x645a5  1      OPC=nop             
  nop                                                       #  42    0x645a6  1      OPC=nop             
  nop                                                       #  43    0x645a7  1      OPC=nop             
  nop                                                       #  44    0x645a8  1      OPC=nop             
  nop                                                       #  45    0x645a9  1      OPC=nop             
  nop                                                       #  46    0x645aa  1      OPC=nop             
  nop                                                       #  47    0x645ab  1      OPC=nop             
  nop                                                       #  48    0x645ac  1      OPC=nop             
  nop                                                       #  49    0x645ad  1      OPC=nop             
  nop                                                       #  50    0x645ae  1      OPC=nop             
  nop                                                       #  51    0x645af  1      OPC=nop             
  nop                                                       #  52    0x645b0  1      OPC=nop             
  nop                                                       #  53    0x645b1  1      OPC=nop             
  nop                                                       #  54    0x645b2  1      OPC=nop             
  nop                                                       #  55    0x645b3  1      OPC=nop             
  nop                                                       #  56    0x645b4  1      OPC=nop             
  nop                                                       #  57    0x645b5  1      OPC=nop             
  nop                                                       #  58    0x645b6  1      OPC=nop             
  nop                                                       #  59    0x645b7  1      OPC=nop             
  nop                                                       #  60    0x645b8  1      OPC=nop             
  nop                                                       #  61    0x645b9  1      OPC=nop             
  nop                                                       #  62    0x645ba  1      OPC=nop             
  callq ._ZNSt12__basic_fileIcED1Ev                         #  63    0x645bb  5      OPC=callq_label     
  leal 0x1c(%rbx), %edi                                     #  64    0x645c0  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                                           #  65    0x645c3  2      OPC=movl_r32_r32    
  movl $0x1003b9e8, (%r15,%rbx,1)                           #  66    0x645c5  8      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                      #  67    0x645cd  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                     #  68    0x645d2  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                          #  69    0x645d7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                           #  70    0x645da  3      OPC=addq_r64_r64    
  nop                                                       #  71    0x645dd  1      OPC=nop             
  nop                                                       #  72    0x645de  1      OPC=nop             
  nop                                                       #  73    0x645df  1      OPC=nop             
  jmpq ._ZNSt6localeD1Ev                                    #  74    0x645e0  5      OPC=jmpq_label_1    
  nop                                                       #  75    0x645e5  1      OPC=nop             
  nop                                                       #  76    0x645e6  1      OPC=nop             
  nop                                                       #  77    0x645e7  1      OPC=nop             
  nop                                                       #  78    0x645e8  1      OPC=nop             
  nop                                                       #  79    0x645e9  1      OPC=nop             
  nop                                                       #  80    0x645ea  1      OPC=nop             
  nop                                                       #  81    0x645eb  1      OPC=nop             
  nop                                                       #  82    0x645ec  1      OPC=nop             
  nop                                                       #  83    0x645ed  1      OPC=nop             
  nop                                                       #  84    0x645ee  1      OPC=nop             
  nop                                                       #  85    0x645ef  1      OPC=nop             
  nop                                                       #  86    0x645f0  1      OPC=nop             
  nop                                                       #  87    0x645f1  1      OPC=nop             
  nop                                                       #  88    0x645f2  1      OPC=nop             
  nop                                                       #  89    0x645f3  1      OPC=nop             
  nop                                                       #  90    0x645f4  1      OPC=nop             
  nop                                                       #  91    0x645f5  1      OPC=nop             
  nop                                                       #  92    0x645f6  1      OPC=nop             
  nop                                                       #  93    0x645f7  1      OPC=nop             
  nop                                                       #  94    0x645f8  1      OPC=nop             
  nop                                                       #  95    0x645f9  1      OPC=nop             
  nop                                                       #  96    0x645fa  1      OPC=nop             
  nop                                                       #  97    0x645fb  1      OPC=nop             
  nop                                                       #  98    0x645fc  1      OPC=nop             
  nop                                                       #  99    0x645fd  1      OPC=nop             
  nop                                                       #  100   0x645fe  1      OPC=nop             
  nop                                                       #  101   0x645ff  1      OPC=nop             
  leal 0x34(%rbx), %edi                                     #  102   0x64600  3      OPC=leal_r32_m16    
  movl %eax, %r12d                                          #  103   0x64603  3      OPC=movl_r32_r32    
  nop                                                       #  104   0x64606  1      OPC=nop             
  nop                                                       #  105   0x64607  1      OPC=nop             
  nop                                                       #  106   0x64608  1      OPC=nop             
  nop                                                       #  107   0x64609  1      OPC=nop             
  nop                                                       #  108   0x6460a  1      OPC=nop             
  nop                                                       #  109   0x6460b  1      OPC=nop             
  nop                                                       #  110   0x6460c  1      OPC=nop             
  nop                                                       #  111   0x6460d  1      OPC=nop             
  nop                                                       #  112   0x6460e  1      OPC=nop             
  nop                                                       #  113   0x6460f  1      OPC=nop             
  nop                                                       #  114   0x64610  1      OPC=nop             
  nop                                                       #  115   0x64611  1      OPC=nop             
  nop                                                       #  116   0x64612  1      OPC=nop             
  nop                                                       #  117   0x64613  1      OPC=nop             
  nop                                                       #  118   0x64614  1      OPC=nop             
  nop                                                       #  119   0x64615  1      OPC=nop             
  nop                                                       #  120   0x64616  1      OPC=nop             
  nop                                                       #  121   0x64617  1      OPC=nop             
  nop                                                       #  122   0x64618  1      OPC=nop             
  nop                                                       #  123   0x64619  1      OPC=nop             
  nop                                                       #  124   0x6461a  1      OPC=nop             
  callq ._ZNSt12__basic_fileIcED1Ev                         #  125   0x6461b  5      OPC=callq_label     
.L_64620:                                                   #        0x64620  0      OPC=<label>         
  movl %ebx, %edi                                           #  126   0x64620  2      OPC=movl_r32_r32    
  nop                                                       #  127   0x64622  1      OPC=nop             
  nop                                                       #  128   0x64623  1      OPC=nop             
  nop                                                       #  129   0x64624  1      OPC=nop             
  nop                                                       #  130   0x64625  1      OPC=nop             
  nop                                                       #  131   0x64626  1      OPC=nop             
  nop                                                       #  132   0x64627  1      OPC=nop             
  nop                                                       #  133   0x64628  1      OPC=nop             
  nop                                                       #  134   0x64629  1      OPC=nop             
  nop                                                       #  135   0x6462a  1      OPC=nop             
  nop                                                       #  136   0x6462b  1      OPC=nop             
  nop                                                       #  137   0x6462c  1      OPC=nop             
  nop                                                       #  138   0x6462d  1      OPC=nop             
  nop                                                       #  139   0x6462e  1      OPC=nop             
  nop                                                       #  140   0x6462f  1      OPC=nop             
  nop                                                       #  141   0x64630  1      OPC=nop             
  nop                                                       #  142   0x64631  1      OPC=nop             
  nop                                                       #  143   0x64632  1      OPC=nop             
  nop                                                       #  144   0x64633  1      OPC=nop             
  nop                                                       #  145   0x64634  1      OPC=nop             
  nop                                                       #  146   0x64635  1      OPC=nop             
  nop                                                       #  147   0x64636  1      OPC=nop             
  nop                                                       #  148   0x64637  1      OPC=nop             
  nop                                                       #  149   0x64638  1      OPC=nop             
  nop                                                       #  150   0x64639  1      OPC=nop             
  nop                                                       #  151   0x6463a  1      OPC=nop             
  callq ._ZNSt15basic_streambufIcSt11char_traitsIcEED2Ev    #  152   0x6463b  5      OPC=callq_label     
  movl %r12d, %edi                                          #  153   0x64640  3      OPC=movl_r32_r32    
  nop                                                       #  154   0x64643  1      OPC=nop             
  nop                                                       #  155   0x64644  1      OPC=nop             
  nop                                                       #  156   0x64645  1      OPC=nop             
  nop                                                       #  157   0x64646  1      OPC=nop             
  nop                                                       #  158   0x64647  1      OPC=nop             
  nop                                                       #  159   0x64648  1      OPC=nop             
  nop                                                       #  160   0x64649  1      OPC=nop             
  nop                                                       #  161   0x6464a  1      OPC=nop             
  nop                                                       #  162   0x6464b  1      OPC=nop             
  nop                                                       #  163   0x6464c  1      OPC=nop             
  nop                                                       #  164   0x6464d  1      OPC=nop             
  nop                                                       #  165   0x6464e  1      OPC=nop             
  nop                                                       #  166   0x6464f  1      OPC=nop             
  nop                                                       #  167   0x64650  1      OPC=nop             
  nop                                                       #  168   0x64651  1      OPC=nop             
  nop                                                       #  169   0x64652  1      OPC=nop             
  nop                                                       #  170   0x64653  1      OPC=nop             
  nop                                                       #  171   0x64654  1      OPC=nop             
  nop                                                       #  172   0x64655  1      OPC=nop             
  nop                                                       #  173   0x64656  1      OPC=nop             
  nop                                                       #  174   0x64657  1      OPC=nop             
  nop                                                       #  175   0x64658  1      OPC=nop             
  nop                                                       #  176   0x64659  1      OPC=nop             
  nop                                                       #  177   0x6465a  1      OPC=nop             
  callq ._Unwind_Resume                                     #  178   0x6465b  5      OPC=callq_label     
  movl %eax, %r12d                                          #  179   0x64660  3      OPC=movl_r32_r32    
  jmpq .L_64620                                             #  180   0x64663  2      OPC=jmpq_label      
  nop                                                       #  181   0x64665  1      OPC=nop             
  nop                                                       #  182   0x64666  1      OPC=nop             
  nop                                                       #  183   0x64667  1      OPC=nop             
  nop                                                       #  184   0x64668  1      OPC=nop             
  nop                                                       #  185   0x64669  1      OPC=nop             
  nop                                                       #  186   0x6466a  1      OPC=nop             
  nop                                                       #  187   0x6466b  1      OPC=nop             
  nop                                                       #  188   0x6466c  1      OPC=nop             
  nop                                                       #  189   0x6466d  1      OPC=nop             
  nop                                                       #  190   0x6466e  1      OPC=nop             
  nop                                                       #  191   0x6466f  1      OPC=nop             
  nop                                                       #  192   0x64670  1      OPC=nop             
  nop                                                       #  193   0x64671  1      OPC=nop             
  nop                                                       #  194   0x64672  1      OPC=nop             
  nop                                                       #  195   0x64673  1      OPC=nop             
  nop                                                       #  196   0x64674  1      OPC=nop             
  nop                                                       #  197   0x64675  1      OPC=nop             
  nop                                                       #  198   0x64676  1      OPC=nop             
  nop                                                       #  199   0x64677  1      OPC=nop             
  nop                                                       #  200   0x64678  1      OPC=nop             
  nop                                                       #  201   0x64679  1      OPC=nop             
  nop                                                       #  202   0x6467a  1      OPC=nop             
  nop                                                       #  203   0x6467b  1      OPC=nop             
  nop                                                       #  204   0x6467c  1      OPC=nop             
  nop                                                       #  205   0x6467d  1      OPC=nop             
  nop                                                       #  206   0x6467e  1      OPC=nop             
  nop                                                       #  207   0x6467f  1      OPC=nop             
                                                                                                         
.size _ZN9__gnu_cxx13stdio_filebufIcSt11char_traitsIcEED1Ev, .-_ZN9__gnu_cxx13stdio_filebufIcSt11char_traitsIcEED1Ev
