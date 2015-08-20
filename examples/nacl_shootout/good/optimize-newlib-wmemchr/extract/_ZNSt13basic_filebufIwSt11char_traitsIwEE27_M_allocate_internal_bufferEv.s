  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv, @function

#! file-offset 0x12ac60
#! rip-offset  0xeac60
#! capacity    128 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv:  #        0xeac60  0      OPC=<label>         
  pushq %rbx                                                                #  1     0xeac60  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                           #  2     0xeac61  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                           #  3     0xeac63  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                              #  4     0xeac65  6      OPC=cmpb_m8_imm8    
  jne .L_eac80                                                              #  5     0xeac6b  2      OPC=jne_label       
  movl %ebx, %ebx                                                           #  6     0xeac6d  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %eax                                              #  7     0xeac6f  5      OPC=movl_r32_m32    
  testl %eax, %eax                                                          #  8     0xeac74  2      OPC=testl_r32_r32   
  je .L_eaca0                                                               #  9     0xeac76  2      OPC=je_label        
  nop                                                                       #  10    0xeac78  1      OPC=nop             
  nop                                                                       #  11    0xeac79  1      OPC=nop             
  nop                                                                       #  12    0xeac7a  1      OPC=nop             
  nop                                                                       #  13    0xeac7b  1      OPC=nop             
  nop                                                                       #  14    0xeac7c  1      OPC=nop             
  nop                                                                       #  15    0xeac7d  1      OPC=nop             
  nop                                                                       #  16    0xeac7e  1      OPC=nop             
  nop                                                                       #  17    0xeac7f  1      OPC=nop             
.L_eac80:                                                                   #        0xeac80  0      OPC=<label>         
  popq %rbx                                                                 #  18    0xeac80  1      OPC=popq_r64_1      
  popq %r11                                                                 #  19    0xeac81  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                   #  20    0xeac83  7      OPC=andl_r32_imm32  
  nop                                                                       #  21    0xeac8a  1      OPC=nop             
  nop                                                                       #  22    0xeac8b  1      OPC=nop             
  nop                                                                       #  23    0xeac8c  1      OPC=nop             
  nop                                                                       #  24    0xeac8d  1      OPC=nop             
  addq %r15, %r11                                                           #  25    0xeac8e  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  26    0xeac91  3      OPC=jmpq_r64        
  nop                                                                       #  27    0xeac94  1      OPC=nop             
  nop                                                                       #  28    0xeac95  1      OPC=nop             
  nop                                                                       #  29    0xeac96  1      OPC=nop             
  nop                                                                       #  30    0xeac97  1      OPC=nop             
  nop                                                                       #  31    0xeac98  1      OPC=nop             
  nop                                                                       #  32    0xeac99  1      OPC=nop             
  nop                                                                       #  33    0xeac9a  1      OPC=nop             
  nop                                                                       #  34    0xeac9b  1      OPC=nop             
  nop                                                                       #  35    0xeac9c  1      OPC=nop             
  nop                                                                       #  36    0xeac9d  1      OPC=nop             
  nop                                                                       #  37    0xeac9e  1      OPC=nop             
  nop                                                                       #  38    0xeac9f  1      OPC=nop             
  nop                                                                       #  39    0xeaca0  1      OPC=nop             
  nop                                                                       #  40    0xeaca1  1      OPC=nop             
  nop                                                                       #  41    0xeaca2  1      OPC=nop             
  nop                                                                       #  42    0xeaca3  1      OPC=nop             
  nop                                                                       #  43    0xeaca4  1      OPC=nop             
  nop                                                                       #  44    0xeaca5  1      OPC=nop             
  nop                                                                       #  45    0xeaca6  1      OPC=nop             
.L_eaca0:                                                                   #        0xeaca7  0      OPC=<label>         
  movl %ebx, %ebx                                                           #  46    0xeaca7  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rbx,1), %edi                                              #  47    0xeaca9  5      OPC=movl_r32_m32    
  shll $0x2, %edi                                                           #  48    0xeacae  3      OPC=shll_r32_imm8   
  xchgw %ax, %ax                                                            #  49    0xeacb1  2      OPC=xchgw_ax_r16    
  nop                                                                       #  50    0xeacb3  1      OPC=nop             
  nop                                                                       #  51    0xeacb4  1      OPC=nop             
  nop                                                                       #  52    0xeacb5  1      OPC=nop             
  nop                                                                       #  53    0xeacb6  1      OPC=nop             
  nop                                                                       #  54    0xeacb7  1      OPC=nop             
  nop                                                                       #  55    0xeacb8  1      OPC=nop             
  nop                                                                       #  56    0xeacb9  1      OPC=nop             
  nop                                                                       #  57    0xeacba  1      OPC=nop             
  nop                                                                       #  58    0xeacbb  1      OPC=nop             
  nop                                                                       #  59    0xeacbc  1      OPC=nop             
  nop                                                                       #  60    0xeacbd  1      OPC=nop             
  nop                                                                       #  61    0xeacbe  1      OPC=nop             
  nop                                                                       #  62    0xeacbf  1      OPC=nop             
  nop                                                                       #  63    0xeacc0  1      OPC=nop             
  nop                                                                       #  64    0xeacc1  1      OPC=nop             
  callq ._Znaj                                                              #  65    0xeacc2  5      OPC=callq_label     
  movl %ebx, %ebx                                                           #  66    0xeacc7  2      OPC=movl_r32_r32    
  movb $0x1, 0x60(%r15,%rbx,1)                                              #  67    0xeacc9  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  68    0xeaccf  2      OPC=movl_r32_r32    
  movl %eax, 0x58(%r15,%rbx,1)                                              #  69    0xeacd1  5      OPC=movl_m32_r32    
  jmpq .L_eac80                                                             #  70    0xeacd6  2      OPC=jmpq_label      
  nop                                                                       #  71    0xeacd8  1      OPC=nop             
  nop                                                                       #  72    0xeacd9  1      OPC=nop             
  nop                                                                       #  73    0xeacda  1      OPC=nop             
  nop                                                                       #  74    0xeacdb  1      OPC=nop             
  nop                                                                       #  75    0xeacdc  1      OPC=nop             
  nop                                                                       #  76    0xeacdd  1      OPC=nop             
  nop                                                                       #  77    0xeacde  1      OPC=nop             
  nop                                                                       #  78    0xeacdf  1      OPC=nop             
  nop                                                                       #  79    0xeace0  1      OPC=nop             
  nop                                                                       #  80    0xeace1  1      OPC=nop             
  nop                                                                       #  81    0xeace2  1      OPC=nop             
  nop                                                                       #  82    0xeace3  1      OPC=nop             
  nop                                                                       #  83    0xeace4  1      OPC=nop             
  nop                                                                       #  84    0xeace5  1      OPC=nop             
  nop                                                                       #  85    0xeace6  1      OPC=nop             
                                                                                                                         
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE27_M_allocate_internal_bufferEv

