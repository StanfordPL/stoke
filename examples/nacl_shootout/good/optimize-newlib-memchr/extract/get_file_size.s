  .text
  .globl get_file_size
  .type get_file_size, @function

#! file-offset 0x620c0
#! rip-offset  0x220c0
#! capacity    160 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.get_file_size:            #        0x220c0  0      OPC=<label>         
  pushq %r13               #  1     0x220c0  2      OPC=pushq_r64_1     
  pushq %r12               #  2     0x220c2  2      OPC=pushq_r64_1     
  pushq %rbx               #  3     0x220c4  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  4     0x220c5  2      OPC=movl_r32_r32    
  movl %ebx, %edi          #  5     0x220c7  2      OPC=movl_r32_r32    
  nop                      #  6     0x220c9  1      OPC=nop             
  nop                      #  7     0x220ca  1      OPC=nop             
  nop                      #  8     0x220cb  1      OPC=nop             
  nop                      #  9     0x220cc  1      OPC=nop             
  nop                      #  10    0x220cd  1      OPC=nop             
  nop                      #  11    0x220ce  1      OPC=nop             
  nop                      #  12    0x220cf  1      OPC=nop             
  nop                      #  13    0x220d0  1      OPC=nop             
  nop                      #  14    0x220d1  1      OPC=nop             
  nop                      #  15    0x220d2  1      OPC=nop             
  nop                      #  16    0x220d3  1      OPC=nop             
  nop                      #  17    0x220d4  1      OPC=nop             
  nop                      #  18    0x220d5  1      OPC=nop             
  nop                      #  19    0x220d6  1      OPC=nop             
  nop                      #  20    0x220d7  1      OPC=nop             
  nop                      #  21    0x220d8  1      OPC=nop             
  nop                      #  22    0x220d9  1      OPC=nop             
  nop                      #  23    0x220da  1      OPC=nop             
  callq .ftell             #  24    0x220db  5      OPC=callq_label     
  movl %eax, %r12d         #  25    0x220e0  3      OPC=movl_r32_r32    
  movl $0x2, %edx          #  26    0x220e3  5      OPC=movl_r32_imm32  
  xorl %esi, %esi          #  27    0x220e8  2      OPC=xorl_r32_r32    
  movl %ebx, %edi          #  28    0x220ea  2      OPC=movl_r32_r32    
  nop                      #  29    0x220ec  1      OPC=nop             
  nop                      #  30    0x220ed  1      OPC=nop             
  nop                      #  31    0x220ee  1      OPC=nop             
  nop                      #  32    0x220ef  1      OPC=nop             
  nop                      #  33    0x220f0  1      OPC=nop             
  nop                      #  34    0x220f1  1      OPC=nop             
  nop                      #  35    0x220f2  1      OPC=nop             
  nop                      #  36    0x220f3  1      OPC=nop             
  nop                      #  37    0x220f4  1      OPC=nop             
  nop                      #  38    0x220f5  1      OPC=nop             
  nop                      #  39    0x220f6  1      OPC=nop             
  nop                      #  40    0x220f7  1      OPC=nop             
  nop                      #  41    0x220f8  1      OPC=nop             
  nop                      #  42    0x220f9  1      OPC=nop             
  nop                      #  43    0x220fa  1      OPC=nop             
  callq .fseek             #  44    0x220fb  5      OPC=callq_label     
  movl %ebx, %edi          #  45    0x22100  2      OPC=movl_r32_r32    
  nop                      #  46    0x22102  1      OPC=nop             
  nop                      #  47    0x22103  1      OPC=nop             
  nop                      #  48    0x22104  1      OPC=nop             
  nop                      #  49    0x22105  1      OPC=nop             
  nop                      #  50    0x22106  1      OPC=nop             
  nop                      #  51    0x22107  1      OPC=nop             
  nop                      #  52    0x22108  1      OPC=nop             
  nop                      #  53    0x22109  1      OPC=nop             
  nop                      #  54    0x2210a  1      OPC=nop             
  nop                      #  55    0x2210b  1      OPC=nop             
  nop                      #  56    0x2210c  1      OPC=nop             
  nop                      #  57    0x2210d  1      OPC=nop             
  nop                      #  58    0x2210e  1      OPC=nop             
  nop                      #  59    0x2210f  1      OPC=nop             
  nop                      #  60    0x22110  1      OPC=nop             
  nop                      #  61    0x22111  1      OPC=nop             
  nop                      #  62    0x22112  1      OPC=nop             
  nop                      #  63    0x22113  1      OPC=nop             
  nop                      #  64    0x22114  1      OPC=nop             
  nop                      #  65    0x22115  1      OPC=nop             
  nop                      #  66    0x22116  1      OPC=nop             
  nop                      #  67    0x22117  1      OPC=nop             
  nop                      #  68    0x22118  1      OPC=nop             
  nop                      #  69    0x22119  1      OPC=nop             
  nop                      #  70    0x2211a  1      OPC=nop             
  callq .ftell             #  71    0x2211b  5      OPC=callq_label     
  movl %eax, %r13d         #  72    0x22120  3      OPC=movl_r32_r32    
  xorl %edx, %edx          #  73    0x22123  2      OPC=xorl_r32_r32    
  movl %r12d, %esi         #  74    0x22125  3      OPC=movl_r32_r32    
  movl %ebx, %edi          #  75    0x22128  2      OPC=movl_r32_r32    
  xchgw %ax, %ax           #  76    0x2212a  2      OPC=xchgw_ax_r16    
  nop                      #  77    0x2212c  1      OPC=nop             
  nop                      #  78    0x2212d  1      OPC=nop             
  nop                      #  79    0x2212e  1      OPC=nop             
  nop                      #  80    0x2212f  1      OPC=nop             
  nop                      #  81    0x22130  1      OPC=nop             
  nop                      #  82    0x22131  1      OPC=nop             
  nop                      #  83    0x22132  1      OPC=nop             
  nop                      #  84    0x22133  1      OPC=nop             
  nop                      #  85    0x22134  1      OPC=nop             
  nop                      #  86    0x22135  1      OPC=nop             
  nop                      #  87    0x22136  1      OPC=nop             
  nop                      #  88    0x22137  1      OPC=nop             
  nop                      #  89    0x22138  1      OPC=nop             
  nop                      #  90    0x22139  1      OPC=nop             
  nop                      #  91    0x2213a  1      OPC=nop             
  callq .fseek             #  92    0x2213b  5      OPC=callq_label     
  subl %r12d, %r13d        #  93    0x22140  3      OPC=subl_r32_r32    
  movslq %r13d, %rax       #  94    0x22143  3      OPC=movslq_r64_r32  
  popq %rbx                #  95    0x22146  1      OPC=popq_r64_1      
  popq %r12                #  96    0x22147  2      OPC=popq_r64_1      
  popq %r13                #  97    0x22149  2      OPC=popq_r64_1      
  popq %r11                #  98    0x2214b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  99    0x2214d  7      OPC=andl_r32_imm32  
  nop                      #  100   0x22154  1      OPC=nop             
  nop                      #  101   0x22155  1      OPC=nop             
  nop                      #  102   0x22156  1      OPC=nop             
  nop                      #  103   0x22157  1      OPC=nop             
  addq %r15, %r11          #  104   0x22158  3      OPC=addq_r64_r64    
  jmpq %r11                #  105   0x2215b  3      OPC=jmpq_r64        
  nop                      #  106   0x2215e  1      OPC=nop             
  nop                      #  107   0x2215f  1      OPC=nop             
  nop                      #  108   0x22160  1      OPC=nop             
  nop                      #  109   0x22161  1      OPC=nop             
  nop                      #  110   0x22162  1      OPC=nop             
  nop                      #  111   0x22163  1      OPC=nop             
  nop                      #  112   0x22164  1      OPC=nop             
  nop                      #  113   0x22165  1      OPC=nop             
  nop                      #  114   0x22166  1      OPC=nop             
                                                                        
.size get_file_size, .-get_file_size

