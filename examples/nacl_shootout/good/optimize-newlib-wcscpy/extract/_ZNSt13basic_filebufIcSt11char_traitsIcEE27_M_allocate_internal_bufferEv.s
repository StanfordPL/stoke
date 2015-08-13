  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv, @function

#! file-offset 0x12a9e0
#! rip-offset  0xea9e0
#! capacity    128 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv:  #        0xea9e0  0      OPC=<label>         
  pushq %rbx                                                                #  1     0xea9e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                           #  2     0xea9e1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                           #  3     0xea9e3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x60(%r15,%rbx,1)                                              #  4     0xea9e5  6      OPC=cmpb_m8_imm8    
  jne .L_eaa00                                                              #  5     0xea9eb  2      OPC=jne_label       
  movl %ebx, %ebx                                                           #  6     0xea9ed  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rbx,1), %edx                                              #  7     0xea9ef  5      OPC=movl_r32_m32    
  testl %edx, %edx                                                          #  8     0xea9f4  2      OPC=testl_r32_r32   
  je .L_eaa20                                                               #  9     0xea9f6  2      OPC=je_label        
  nop                                                                       #  10    0xea9f8  1      OPC=nop             
  nop                                                                       #  11    0xea9f9  1      OPC=nop             
  nop                                                                       #  12    0xea9fa  1      OPC=nop             
  nop                                                                       #  13    0xea9fb  1      OPC=nop             
  nop                                                                       #  14    0xea9fc  1      OPC=nop             
  nop                                                                       #  15    0xea9fd  1      OPC=nop             
  nop                                                                       #  16    0xea9fe  1      OPC=nop             
  nop                                                                       #  17    0xea9ff  1      OPC=nop             
.L_eaa00:                                                                   #        0xeaa00  0      OPC=<label>         
  popq %rbx                                                                 #  18    0xeaa00  1      OPC=popq_r64_1      
  popq %r11                                                                 #  19    0xeaa01  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                   #  20    0xeaa03  7      OPC=andl_r32_imm32  
  nop                                                                       #  21    0xeaa0a  1      OPC=nop             
  nop                                                                       #  22    0xeaa0b  1      OPC=nop             
  nop                                                                       #  23    0xeaa0c  1      OPC=nop             
  nop                                                                       #  24    0xeaa0d  1      OPC=nop             
  addq %r15, %r11                                                           #  25    0xeaa0e  3      OPC=addq_r64_r64    
  jmpq %r11                                                                 #  26    0xeaa11  3      OPC=jmpq_r64        
  nop                                                                       #  27    0xeaa14  1      OPC=nop             
  nop                                                                       #  28    0xeaa15  1      OPC=nop             
  nop                                                                       #  29    0xeaa16  1      OPC=nop             
  nop                                                                       #  30    0xeaa17  1      OPC=nop             
  nop                                                                       #  31    0xeaa18  1      OPC=nop             
  nop                                                                       #  32    0xeaa19  1      OPC=nop             
  nop                                                                       #  33    0xeaa1a  1      OPC=nop             
  nop                                                                       #  34    0xeaa1b  1      OPC=nop             
  nop                                                                       #  35    0xeaa1c  1      OPC=nop             
  nop                                                                       #  36    0xeaa1d  1      OPC=nop             
  nop                                                                       #  37    0xeaa1e  1      OPC=nop             
  nop                                                                       #  38    0xeaa1f  1      OPC=nop             
  nop                                                                       #  39    0xeaa20  1      OPC=nop             
  nop                                                                       #  40    0xeaa21  1      OPC=nop             
  nop                                                                       #  41    0xeaa22  1      OPC=nop             
  nop                                                                       #  42    0xeaa23  1      OPC=nop             
  nop                                                                       #  43    0xeaa24  1      OPC=nop             
  nop                                                                       #  44    0xeaa25  1      OPC=nop             
  nop                                                                       #  45    0xeaa26  1      OPC=nop             
.L_eaa20:                                                                   #        0xeaa27  0      OPC=<label>         
  movl %ebx, %ebx                                                           #  46    0xeaa27  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rbx,1), %edi                                              #  47    0xeaa29  5      OPC=movl_r32_m32    
  nop                                                                       #  48    0xeaa2e  1      OPC=nop             
  nop                                                                       #  49    0xeaa2f  1      OPC=nop             
  nop                                                                       #  50    0xeaa30  1      OPC=nop             
  nop                                                                       #  51    0xeaa31  1      OPC=nop             
  nop                                                                       #  52    0xeaa32  1      OPC=nop             
  nop                                                                       #  53    0xeaa33  1      OPC=nop             
  nop                                                                       #  54    0xeaa34  1      OPC=nop             
  nop                                                                       #  55    0xeaa35  1      OPC=nop             
  nop                                                                       #  56    0xeaa36  1      OPC=nop             
  nop                                                                       #  57    0xeaa37  1      OPC=nop             
  nop                                                                       #  58    0xeaa38  1      OPC=nop             
  nop                                                                       #  59    0xeaa39  1      OPC=nop             
  nop                                                                       #  60    0xeaa3a  1      OPC=nop             
  nop                                                                       #  61    0xeaa3b  1      OPC=nop             
  nop                                                                       #  62    0xeaa3c  1      OPC=nop             
  nop                                                                       #  63    0xeaa3d  1      OPC=nop             
  nop                                                                       #  64    0xeaa3e  1      OPC=nop             
  nop                                                                       #  65    0xeaa3f  1      OPC=nop             
  nop                                                                       #  66    0xeaa40  1      OPC=nop             
  nop                                                                       #  67    0xeaa41  1      OPC=nop             
  callq ._Znaj                                                              #  68    0xeaa42  5      OPC=callq_label     
  movl %ebx, %ebx                                                           #  69    0xeaa47  2      OPC=movl_r32_r32    
  movb $0x1, 0x60(%r15,%rbx,1)                                              #  70    0xeaa49  6      OPC=movb_m8_imm8    
  movl %ebx, %ebx                                                           #  71    0xeaa4f  2      OPC=movl_r32_r32    
  movl %eax, 0x58(%r15,%rbx,1)                                              #  72    0xeaa51  5      OPC=movl_m32_r32    
  jmpq .L_eaa00                                                             #  73    0xeaa56  2      OPC=jmpq_label      
  nop                                                                       #  74    0xeaa58  1      OPC=nop             
  nop                                                                       #  75    0xeaa59  1      OPC=nop             
  nop                                                                       #  76    0xeaa5a  1      OPC=nop             
  nop                                                                       #  77    0xeaa5b  1      OPC=nop             
  nop                                                                       #  78    0xeaa5c  1      OPC=nop             
  nop                                                                       #  79    0xeaa5d  1      OPC=nop             
  nop                                                                       #  80    0xeaa5e  1      OPC=nop             
  nop                                                                       #  81    0xeaa5f  1      OPC=nop             
  nop                                                                       #  82    0xeaa60  1      OPC=nop             
  nop                                                                       #  83    0xeaa61  1      OPC=nop             
  nop                                                                       #  84    0xeaa62  1      OPC=nop             
  nop                                                                       #  85    0xeaa63  1      OPC=nop             
  nop                                                                       #  86    0xeaa64  1      OPC=nop             
  nop                                                                       #  87    0xeaa65  1      OPC=nop             
  nop                                                                       #  88    0xeaa66  1      OPC=nop             
                                                                                                                         
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE27_M_allocate_internal_bufferEv

