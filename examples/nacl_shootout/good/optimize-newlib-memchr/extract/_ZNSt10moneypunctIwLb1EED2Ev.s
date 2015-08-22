  .text
  .globl _ZNSt10moneypunctIwLb1EED2Ev
  .type _ZNSt10moneypunctIwLb1EED2Ev, @function

#! file-offset 0x11be40
#! rip-offset  0xdbe40
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIwLb1EED2Ev:     #        0xdbe40  0      OPC=<label>         
  pushq %rbx                       #  1     0xdbe40  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdbe41  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdbe43  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdbe46  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdbe49  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdbe4b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdbe50  2      OPC=movl_r32_r32    
  movl $0x1003c108, (%r15,%rbx,1)  #  8     0xdbe52  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdbe5a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdbe5d  1      OPC=nop             
  nop                              #  11    0xdbe5e  1      OPC=nop             
  nop                              #  12    0xdbe5f  1      OPC=nop             
  je .L_dbe80                      #  13    0xdbe60  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdbe62  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdbe64  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdbe68  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdbe6a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdbe6f  1      OPC=nop             
  nop                              #  19    0xdbe70  1      OPC=nop             
  nop                              #  20    0xdbe71  1      OPC=nop             
  nop                              #  21    0xdbe72  1      OPC=nop             
  nop                              #  22    0xdbe73  1      OPC=nop             
  nop                              #  23    0xdbe74  1      OPC=nop             
  nop                              #  24    0xdbe75  1      OPC=nop             
  nop                              #  25    0xdbe76  1      OPC=nop             
  nop                              #  26    0xdbe77  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdbe78  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdbe7e  1      OPC=nop             
  nop                              #  29    0xdbe7f  1      OPC=nop             
  nop                              #  30    0xdbe80  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdbe81  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdbe84  2      OPC=callq_r64       
.L_dbe80:                          #        0xdbe86  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdbe86  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdbe88  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdbe8b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdbe8e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdbe8f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdbe94  1      OPC=nop             
  nop                              #  39    0xdbe95  1      OPC=nop             
  nop                              #  40    0xdbe96  1      OPC=nop             
  nop                              #  41    0xdbe97  1      OPC=nop             
  nop                              #  42    0xdbe98  1      OPC=nop             
  nop                              #  43    0xdbe99  1      OPC=nop             
  nop                              #  44    0xdbe9a  1      OPC=nop             
  nop                              #  45    0xdbe9b  1      OPC=nop             
  nop                              #  46    0xdbe9c  1      OPC=nop             
  nop                              #  47    0xdbe9d  1      OPC=nop             
  nop                              #  48    0xdbe9e  1      OPC=nop             
  nop                              #  49    0xdbe9f  1      OPC=nop             
  nop                              #  50    0xdbea0  1      OPC=nop             
  nop                              #  51    0xdbea1  1      OPC=nop             
  nop                              #  52    0xdbea2  1      OPC=nop             
  nop                              #  53    0xdbea3  1      OPC=nop             
  nop                              #  54    0xdbea4  1      OPC=nop             
  nop                              #  55    0xdbea5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdbea6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdbea8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdbeac  1      OPC=nop             
  nop                              #  59    0xdbead  1      OPC=nop             
  nop                              #  60    0xdbeae  1      OPC=nop             
  nop                              #  61    0xdbeaf  1      OPC=nop             
  nop                              #  62    0xdbeb0  1      OPC=nop             
  nop                              #  63    0xdbeb1  1      OPC=nop             
  nop                              #  64    0xdbeb2  1      OPC=nop             
  nop                              #  65    0xdbeb3  1      OPC=nop             
  nop                              #  66    0xdbeb4  1      OPC=nop             
  nop                              #  67    0xdbeb5  1      OPC=nop             
  nop                              #  68    0xdbeb6  1      OPC=nop             
  nop                              #  69    0xdbeb7  1      OPC=nop             
  nop                              #  70    0xdbeb8  1      OPC=nop             
  nop                              #  71    0xdbeb9  1      OPC=nop             
  nop                              #  72    0xdbeba  1      OPC=nop             
  nop                              #  73    0xdbebb  1      OPC=nop             
  nop                              #  74    0xdbebc  1      OPC=nop             
  nop                              #  75    0xdbebd  1      OPC=nop             
  nop                              #  76    0xdbebe  1      OPC=nop             
  nop                              #  77    0xdbebf  1      OPC=nop             
  nop                              #  78    0xdbec0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdbec1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdbec6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdbeca  2      OPC=movl_r32_r32    
  nop                              #  82    0xdbecc  1      OPC=nop             
  nop                              #  83    0xdbecd  1      OPC=nop             
  nop                              #  84    0xdbece  1      OPC=nop             
  nop                              #  85    0xdbecf  1      OPC=nop             
  nop                              #  86    0xdbed0  1      OPC=nop             
  nop                              #  87    0xdbed1  1      OPC=nop             
  nop                              #  88    0xdbed2  1      OPC=nop             
  nop                              #  89    0xdbed3  1      OPC=nop             
  nop                              #  90    0xdbed4  1      OPC=nop             
  nop                              #  91    0xdbed5  1      OPC=nop             
  nop                              #  92    0xdbed6  1      OPC=nop             
  nop                              #  93    0xdbed7  1      OPC=nop             
  nop                              #  94    0xdbed8  1      OPC=nop             
  nop                              #  95    0xdbed9  1      OPC=nop             
  nop                              #  96    0xdbeda  1      OPC=nop             
  nop                              #  97    0xdbedb  1      OPC=nop             
  nop                              #  98    0xdbedc  1      OPC=nop             
  nop                              #  99    0xdbedd  1      OPC=nop             
  nop                              #  100   0xdbede  1      OPC=nop             
  nop                              #  101   0xdbedf  1      OPC=nop             
  nop                              #  102   0xdbee0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdbee1  5      OPC=callq_label     
                                                                                
.size _ZNSt10moneypunctIwLb1EED2Ev, .-_ZNSt10moneypunctIwLb1EED2Ev

