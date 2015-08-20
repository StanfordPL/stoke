  .text
  .globl _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs
  .type _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs, @function

#! file-offset 0xd4ba0
#! rip-offset  0x94ba0
#! capacity    128 bytes

# Text                                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs:                    #        0x94ba0  0      OPC=<label>         
  movl %edx, %eax                                                                                                 #  1     0x94ba0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                                 #  2     0x94ba2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                                 #  3     0x94ba5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                                 #  4     0x94ba8  2      OPC=movl_r32_r32    
  testb %al, %al                                                                                                  #  5     0x94baa  2      OPC=testb_r8_r8     
  movl %ecx, %edx                                                                                                 #  6     0x94bac  2      OPC=movl_r32_r32    
  movl %r9d, %r9d                                                                                                 #  7     0x94bae  3      OPC=movl_r32_r32    
  jne .L_94be0                                                                                                    #  8     0x94bb1  2      OPC=jne_label       
  movsbl %r8b, %ecx                                                                                               #  9     0x94bb3  4      OPC=movsbl_r32_r8   
  movl %r9d, %r8d                                                                                                 #  10    0x94bb7  3      OPC=movl_r32_r32    
  nop                                                                                                             #  11    0x94bba  1      OPC=nop             
  callq ._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE9_M_insertILb0EEES3_S3_RSt8ios_basecRKSs  #  12    0x94bbb  5      OPC=callq_label     
  addl $0x8, %esp                                                                                                 #  13    0x94bc0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                 #  14    0x94bc3  3      OPC=addq_r64_r64    
  popq %r11                                                                                                       #  15    0x94bc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                         #  16    0x94bc8  7      OPC=andl_r32_imm32  
  nop                                                                                                             #  17    0x94bcf  1      OPC=nop             
  nop                                                                                                             #  18    0x94bd0  1      OPC=nop             
  nop                                                                                                             #  19    0x94bd1  1      OPC=nop             
  nop                                                                                                             #  20    0x94bd2  1      OPC=nop             
  addq %r15, %r11                                                                                                 #  21    0x94bd3  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                       #  22    0x94bd6  3      OPC=jmpq_r64        
  nop                                                                                                             #  23    0x94bd9  1      OPC=nop             
  nop                                                                                                             #  24    0x94bda  1      OPC=nop             
  nop                                                                                                             #  25    0x94bdb  1      OPC=nop             
  nop                                                                                                             #  26    0x94bdc  1      OPC=nop             
  nop                                                                                                             #  27    0x94bdd  1      OPC=nop             
  nop                                                                                                             #  28    0x94bde  1      OPC=nop             
  nop                                                                                                             #  29    0x94bdf  1      OPC=nop             
  nop                                                                                                             #  30    0x94be0  1      OPC=nop             
  nop                                                                                                             #  31    0x94be1  1      OPC=nop             
  nop                                                                                                             #  32    0x94be2  1      OPC=nop             
  nop                                                                                                             #  33    0x94be3  1      OPC=nop             
  nop                                                                                                             #  34    0x94be4  1      OPC=nop             
  nop                                                                                                             #  35    0x94be5  1      OPC=nop             
  nop                                                                                                             #  36    0x94be6  1      OPC=nop             
.L_94be0:                                                                                                         #        0x94be7  0      OPC=<label>         
  movsbl %r8b, %ecx                                                                                               #  37    0x94be7  4      OPC=movsbl_r32_r8   
  movl %r9d, %r8d                                                                                                 #  38    0x94beb  3      OPC=movl_r32_r32    
  nop                                                                                                             #  39    0x94bee  1      OPC=nop             
  nop                                                                                                             #  40    0x94bef  1      OPC=nop             
  nop                                                                                                             #  41    0x94bf0  1      OPC=nop             
  nop                                                                                                             #  42    0x94bf1  1      OPC=nop             
  nop                                                                                                             #  43    0x94bf2  1      OPC=nop             
  nop                                                                                                             #  44    0x94bf3  1      OPC=nop             
  nop                                                                                                             #  45    0x94bf4  1      OPC=nop             
  nop                                                                                                             #  46    0x94bf5  1      OPC=nop             
  nop                                                                                                             #  47    0x94bf6  1      OPC=nop             
  nop                                                                                                             #  48    0x94bf7  1      OPC=nop             
  nop                                                                                                             #  49    0x94bf8  1      OPC=nop             
  nop                                                                                                             #  50    0x94bf9  1      OPC=nop             
  nop                                                                                                             #  51    0x94bfa  1      OPC=nop             
  nop                                                                                                             #  52    0x94bfb  1      OPC=nop             
  nop                                                                                                             #  53    0x94bfc  1      OPC=nop             
  nop                                                                                                             #  54    0x94bfd  1      OPC=nop             
  nop                                                                                                             #  55    0x94bfe  1      OPC=nop             
  nop                                                                                                             #  56    0x94bff  1      OPC=nop             
  nop                                                                                                             #  57    0x94c00  1      OPC=nop             
  nop                                                                                                             #  58    0x94c01  1      OPC=nop             
  callq ._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE9_M_insertILb1EEES3_S3_RSt8ios_basecRKSs  #  59    0x94c02  5      OPC=callq_label     
  addl $0x8, %esp                                                                                                 #  60    0x94c07  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                                 #  61    0x94c0a  3      OPC=addq_r64_r64    
  popq %r11                                                                                                       #  62    0x94c0d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                         #  63    0x94c0f  7      OPC=andl_r32_imm32  
  nop                                                                                                             #  64    0x94c16  1      OPC=nop             
  nop                                                                                                             #  65    0x94c17  1      OPC=nop             
  nop                                                                                                             #  66    0x94c18  1      OPC=nop             
  nop                                                                                                             #  67    0x94c19  1      OPC=nop             
  addq %r15, %r11                                                                                                 #  68    0x94c1a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                       #  69    0x94c1d  3      OPC=jmpq_r64        
  nop                                                                                                             #  70    0x94c20  1      OPC=nop             
  nop                                                                                                             #  71    0x94c21  1      OPC=nop             
  nop                                                                                                             #  72    0x94c22  1      OPC=nop             
  nop                                                                                                             #  73    0x94c23  1      OPC=nop             
  nop                                                                                                             #  74    0x94c24  1      OPC=nop             
  nop                                                                                                             #  75    0x94c25  1      OPC=nop             
  nop                                                                                                             #  76    0x94c26  1      OPC=nop             
  nop                                                                                                             #  77    0x94c27  1      OPC=nop             
  nop                                                                                                             #  78    0x94c28  1      OPC=nop             
  nop                                                                                                             #  79    0x94c29  1      OPC=nop             
  nop                                                                                                             #  80    0x94c2a  1      OPC=nop             
  nop                                                                                                             #  81    0x94c2b  1      OPC=nop             
  nop                                                                                                             #  82    0x94c2c  1      OPC=nop             
  nop                                                                                                             #  83    0x94c2d  1      OPC=nop             
                                                                                                                                                               
.size _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs, .-_ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE6do_putES3_bRSt8ios_basecRKSs

