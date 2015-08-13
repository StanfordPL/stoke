  .text
  .globl _ZNKSt13basic_filebufIwSt11char_traitsIwEE7is_openEv
  .type _ZNKSt13basic_filebufIwSt11char_traitsIwEE7is_openEv, @function

#! file-offset 0x12abe0
#! rip-offset  0xeabe0
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt13basic_filebufIwSt11char_traitsIwEE7is_openEv:  #        0xeabe0  0      OPC=<label>         
  subl $0x8, %esp                                       #  1     0xeabe0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  2     0xeabe3  3      OPC=addq_r64_r64    
  addl $0x34, %edi                                      #  3     0xeabe6  3      OPC=addl_r32_imm8   
  nop                                                   #  4     0xeabe9  1      OPC=nop             
  nop                                                   #  5     0xeabea  1      OPC=nop             
  nop                                                   #  6     0xeabeb  1      OPC=nop             
  nop                                                   #  7     0xeabec  1      OPC=nop             
  nop                                                   #  8     0xeabed  1      OPC=nop             
  nop                                                   #  9     0xeabee  1      OPC=nop             
  nop                                                   #  10    0xeabef  1      OPC=nop             
  nop                                                   #  11    0xeabf0  1      OPC=nop             
  nop                                                   #  12    0xeabf1  1      OPC=nop             
  nop                                                   #  13    0xeabf2  1      OPC=nop             
  nop                                                   #  14    0xeabf3  1      OPC=nop             
  nop                                                   #  15    0xeabf4  1      OPC=nop             
  nop                                                   #  16    0xeabf5  1      OPC=nop             
  nop                                                   #  17    0xeabf6  1      OPC=nop             
  nop                                                   #  18    0xeabf7  1      OPC=nop             
  nop                                                   #  19    0xeabf8  1      OPC=nop             
  nop                                                   #  20    0xeabf9  1      OPC=nop             
  nop                                                   #  21    0xeabfa  1      OPC=nop             
  callq ._ZNKSt12__basic_fileIcE7is_openEv              #  22    0xeabfb  5      OPC=callq_label     
  addl $0x8, %esp                                       #  23    0xeac00  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  24    0xeac03  3      OPC=addq_r64_r64    
  popq %r11                                             #  25    0xeac06  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  26    0xeac08  7      OPC=andl_r32_imm32  
  nop                                                   #  27    0xeac0f  1      OPC=nop             
  nop                                                   #  28    0xeac10  1      OPC=nop             
  nop                                                   #  29    0xeac11  1      OPC=nop             
  nop                                                   #  30    0xeac12  1      OPC=nop             
  addq %r15, %r11                                       #  31    0xeac13  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  32    0xeac16  3      OPC=jmpq_r64        
  nop                                                   #  33    0xeac19  1      OPC=nop             
  nop                                                   #  34    0xeac1a  1      OPC=nop             
  nop                                                   #  35    0xeac1b  1      OPC=nop             
  nop                                                   #  36    0xeac1c  1      OPC=nop             
  nop                                                   #  37    0xeac1d  1      OPC=nop             
  nop                                                   #  38    0xeac1e  1      OPC=nop             
  nop                                                   #  39    0xeac1f  1      OPC=nop             
  nop                                                   #  40    0xeac20  1      OPC=nop             
  nop                                                   #  41    0xeac21  1      OPC=nop             
  nop                                                   #  42    0xeac22  1      OPC=nop             
  nop                                                   #  43    0xeac23  1      OPC=nop             
  nop                                                   #  44    0xeac24  1      OPC=nop             
  nop                                                   #  45    0xeac25  1      OPC=nop             
  nop                                                   #  46    0xeac26  1      OPC=nop             
  cmpq $0xff, %rdx                                      #  47    0xeac27  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                       #  48    0xeac2b  2      OPC=movl_r32_r32    
  je .L_eac40                                           #  49    0xeac2d  2      OPC=je_label        
  nop                                                   #  50    0xeac2f  1      OPC=nop             
  nop                                                   #  51    0xeac30  1      OPC=nop             
  nop                                                   #  52    0xeac31  1      OPC=nop             
  nop                                                   #  53    0xeac32  1      OPC=nop             
  nop                                                   #  54    0xeac33  1      OPC=nop             
  nop                                                   #  55    0xeac34  1      OPC=nop             
  nop                                                   #  56    0xeac35  1      OPC=nop             
  nop                                                   #  57    0xeac36  1      OPC=nop             
  nop                                                   #  58    0xeac37  1      OPC=nop             
  nop                                                   #  59    0xeac38  1      OPC=nop             
  nop                                                   #  60    0xeac39  1      OPC=nop             
  nop                                                   #  61    0xeac3a  1      OPC=nop             
  nop                                                   #  62    0xeac3b  1      OPC=nop             
  nop                                                   #  63    0xeac3c  1      OPC=nop             
  nop                                                   #  64    0xeac3d  1      OPC=nop             
  nop                                                   #  65    0xeac3e  1      OPC=nop             
  nop                                                   #  66    0xeac3f  1      OPC=nop             
  nop                                                   #  67    0xeac40  1      OPC=nop             
  nop                                                   #  68    0xeac41  1      OPC=nop             
  callq ._Unwind_Resume                                 #  69    0xeac42  5      OPC=callq_label     
.L_eac40:                                               #        0xeac47  0      OPC=<label>         
  nop                                                   #  70    0xeac47  1      OPC=nop             
  nop                                                   #  71    0xeac48  1      OPC=nop             
  nop                                                   #  72    0xeac49  1      OPC=nop             
  nop                                                   #  73    0xeac4a  1      OPC=nop             
  nop                                                   #  74    0xeac4b  1      OPC=nop             
  nop                                                   #  75    0xeac4c  1      OPC=nop             
  nop                                                   #  76    0xeac4d  1      OPC=nop             
  nop                                                   #  77    0xeac4e  1      OPC=nop             
  nop                                                   #  78    0xeac4f  1      OPC=nop             
  nop                                                   #  79    0xeac50  1      OPC=nop             
  nop                                                   #  80    0xeac51  1      OPC=nop             
  nop                                                   #  81    0xeac52  1      OPC=nop             
  nop                                                   #  82    0xeac53  1      OPC=nop             
  nop                                                   #  83    0xeac54  1      OPC=nop             
  nop                                                   #  84    0xeac55  1      OPC=nop             
  nop                                                   #  85    0xeac56  1      OPC=nop             
  nop                                                   #  86    0xeac57  1      OPC=nop             
  nop                                                   #  87    0xeac58  1      OPC=nop             
  nop                                                   #  88    0xeac59  1      OPC=nop             
  nop                                                   #  89    0xeac5a  1      OPC=nop             
  nop                                                   #  90    0xeac5b  1      OPC=nop             
  nop                                                   #  91    0xeac5c  1      OPC=nop             
  nop                                                   #  92    0xeac5d  1      OPC=nop             
  nop                                                   #  93    0xeac5e  1      OPC=nop             
  nop                                                   #  94    0xeac5f  1      OPC=nop             
  nop                                                   #  95    0xeac60  1      OPC=nop             
  nop                                                   #  96    0xeac61  1      OPC=nop             
  callq .__cxa_call_unexpected                          #  97    0xeac62  5      OPC=callq_label     
                                                                                                     
.size _ZNKSt13basic_filebufIwSt11char_traitsIwEE7is_openEv, .-_ZNKSt13basic_filebufIwSt11char_traitsIwEE7is_openEv

