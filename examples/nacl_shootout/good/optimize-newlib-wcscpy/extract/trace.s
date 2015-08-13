  .text
  .globl trace
  .type trace, @function

#! file-offset 0x65640
#! rip-offset  0x25640
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.trace:                         #        0x25640  0      OPC=<label>         
  pushq %rbx                    #  1     0x25640  1      OPC=pushq_r64_1     
  movl %edi, %ebx               #  2     0x25641  2      OPC=movl_r32_r32    
  movl 0x1004baf3(%rip), %eax   #  3     0x25643  6      OPC=movl_r32_m32    
  subl $0x1, %eax               #  4     0x25649  3      OPC=subl_r32_imm8   
  movl %eax, 0x1004baea(%rip)   #  5     0x2564c  6      OPC=movl_m32_r32    
  testl %eax, %eax              #  6     0x25652  2      OPC=testl_r32_r32   
  jle .L_25660                  #  7     0x25654  2      OPC=jle_label       
  movsbl %bl, %edi              #  8     0x25656  3      OPC=movsbl_r32_r8   
  popq %rbx                     #  9     0x25659  1      OPC=popq_r64_1      
  jmpq .putchar                 #  10    0x2565a  5      OPC=jmpq_label_1    
  nop                           #  11    0x2565f  1      OPC=nop             
.L_25660:                       #        0x25660  0      OPC=<label>         
  movl $0xa, %edi               #  12    0x25660  5      OPC=movl_r32_imm32  
  nop                           #  13    0x25665  1      OPC=nop             
  nop                           #  14    0x25666  1      OPC=nop             
  nop                           #  15    0x25667  1      OPC=nop             
  nop                           #  16    0x25668  1      OPC=nop             
  nop                           #  17    0x25669  1      OPC=nop             
  nop                           #  18    0x2566a  1      OPC=nop             
  nop                           #  19    0x2566b  1      OPC=nop             
  nop                           #  20    0x2566c  1      OPC=nop             
  nop                           #  21    0x2566d  1      OPC=nop             
  nop                           #  22    0x2566e  1      OPC=nop             
  nop                           #  23    0x2566f  1      OPC=nop             
  nop                           #  24    0x25670  1      OPC=nop             
  nop                           #  25    0x25671  1      OPC=nop             
  nop                           #  26    0x25672  1      OPC=nop             
  nop                           #  27    0x25673  1      OPC=nop             
  nop                           #  28    0x25674  1      OPC=nop             
  nop                           #  29    0x25675  1      OPC=nop             
  nop                           #  30    0x25676  1      OPC=nop             
  nop                           #  31    0x25677  1      OPC=nop             
  nop                           #  32    0x25678  1      OPC=nop             
  nop                           #  33    0x25679  1      OPC=nop             
  nop                           #  34    0x2567a  1      OPC=nop             
  callq .putchar                #  35    0x2567b  5      OPC=callq_label     
  movl $0x32, 0x1004bab2(%rip)  #  36    0x25680  10     OPC=movl_m32_imm32  
  movsbl %bl, %edi              #  37    0x2568a  3      OPC=movsbl_r32_r8   
  popq %rbx                     #  38    0x2568d  1      OPC=popq_r64_1      
  jmpq .putchar                 #  39    0x2568e  5      OPC=jmpq_label_1    
  nop                           #  40    0x25693  1      OPC=nop             
  nop                           #  41    0x25694  1      OPC=nop             
  nop                           #  42    0x25695  1      OPC=nop             
  nop                           #  43    0x25696  1      OPC=nop             
  nop                           #  44    0x25697  1      OPC=nop             
  nop                           #  45    0x25698  1      OPC=nop             
  nop                           #  46    0x25699  1      OPC=nop             
  nop                           #  47    0x2569a  1      OPC=nop             
  nop                           #  48    0x2569b  1      OPC=nop             
  nop                           #  49    0x2569c  1      OPC=nop             
  nop                           #  50    0x2569d  1      OPC=nop             
  nop                           #  51    0x2569e  1      OPC=nop             
  nop                           #  52    0x2569f  1      OPC=nop             
                                                                             
.size trace, .-trace

