  .text
  .globl _ZNSs4_Rep10_M_refcopyEv
  .type _ZNSs4_Rep10_M_refcopyEv, @function

#! file-offset 0xeaa00
#! rip-offset  0xaaa00
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep10_M_refcopyEv:     #        0xaaa00  0      OPC=<label>         
  movl %edi, %eax              #  1     0xaaa00  2      OPC=movl_r32_r32    
  cmpl $0x10073580, %eax       #  2     0xaaa02  5      OPC=cmpl_eax_imm32  
  jne .L_aaa40                 #  3     0xaaa07  2      OPC=jne_label       
  nop                          #  4     0xaaa09  1      OPC=nop             
  nop                          #  5     0xaaa0a  1      OPC=nop             
  nop                          #  6     0xaaa0b  1      OPC=nop             
  nop                          #  7     0xaaa0c  1      OPC=nop             
  nop                          #  8     0xaaa0d  1      OPC=nop             
  nop                          #  9     0xaaa0e  1      OPC=nop             
  nop                          #  10    0xaaa0f  1      OPC=nop             
  nop                          #  11    0xaaa10  1      OPC=nop             
  nop                          #  12    0xaaa11  1      OPC=nop             
  nop                          #  13    0xaaa12  1      OPC=nop             
  nop                          #  14    0xaaa13  1      OPC=nop             
  nop                          #  15    0xaaa14  1      OPC=nop             
  nop                          #  16    0xaaa15  1      OPC=nop             
  nop                          #  17    0xaaa16  1      OPC=nop             
  nop                          #  18    0xaaa17  1      OPC=nop             
  nop                          #  19    0xaaa18  1      OPC=nop             
  nop                          #  20    0xaaa19  1      OPC=nop             
  nop                          #  21    0xaaa1a  1      OPC=nop             
  nop                          #  22    0xaaa1b  1      OPC=nop             
  nop                          #  23    0xaaa1c  1      OPC=nop             
  nop                          #  24    0xaaa1d  1      OPC=nop             
  nop                          #  25    0xaaa1e  1      OPC=nop             
  nop                          #  26    0xaaa1f  1      OPC=nop             
.L_aaa20:                      #        0xaaa20  0      OPC=<label>         
  popq %r11                    #  27    0xaaa20  2      OPC=popq_r64_1      
  addl $0xc, %eax              #  28    0xaaa22  3      OPC=addl_r32_imm8   
  andl $0xffffffe0, %r11d      #  29    0xaaa25  7      OPC=andl_r32_imm32  
  nop                          #  30    0xaaa2c  1      OPC=nop             
  nop                          #  31    0xaaa2d  1      OPC=nop             
  nop                          #  32    0xaaa2e  1      OPC=nop             
  nop                          #  33    0xaaa2f  1      OPC=nop             
  addq %r15, %r11              #  34    0xaaa30  3      OPC=addq_r64_r64    
  jmpq %r11                    #  35    0xaaa33  3      OPC=jmpq_r64        
  xchgw %ax, %ax               #  36    0xaaa36  2      OPC=xchgw_ax_r16    
  nop                          #  37    0xaaa38  1      OPC=nop             
  nop                          #  38    0xaaa39  1      OPC=nop             
  nop                          #  39    0xaaa3a  1      OPC=nop             
  nop                          #  40    0xaaa3b  1      OPC=nop             
  nop                          #  41    0xaaa3c  1      OPC=nop             
  nop                          #  42    0xaaa3d  1      OPC=nop             
  nop                          #  43    0xaaa3e  1      OPC=nop             
  nop                          #  44    0xaaa3f  1      OPC=nop             
  nop                          #  45    0xaaa40  1      OPC=nop             
  nop                          #  46    0xaaa41  1      OPC=nop             
  nop                          #  47    0xaaa42  1      OPC=nop             
  nop                          #  48    0xaaa43  1      OPC=nop             
  nop                          #  49    0xaaa44  1      OPC=nop             
  nop                          #  50    0xaaa45  1      OPC=nop             
  nop                          #  51    0xaaa46  1      OPC=nop             
.L_aaa40:                      #        0xaaa47  0      OPC=<label>         
  movl %eax, %eax              #  52    0xaaa47  2      OPC=movl_r32_r32    
  addl $0x1, 0x8(%r15,%rax,1)  #  53    0xaaa49  6      OPC=addl_m32_imm8   
  jmpq .L_aaa20                #  54    0xaaa4f  2      OPC=jmpq_label      
  nop                          #  55    0xaaa51  1      OPC=nop             
  nop                          #  56    0xaaa52  1      OPC=nop             
  nop                          #  57    0xaaa53  1      OPC=nop             
  nop                          #  58    0xaaa54  1      OPC=nop             
  nop                          #  59    0xaaa55  1      OPC=nop             
  nop                          #  60    0xaaa56  1      OPC=nop             
  nop                          #  61    0xaaa57  1      OPC=nop             
  nop                          #  62    0xaaa58  1      OPC=nop             
  nop                          #  63    0xaaa59  1      OPC=nop             
  nop                          #  64    0xaaa5a  1      OPC=nop             
  nop                          #  65    0xaaa5b  1      OPC=nop             
  nop                          #  66    0xaaa5c  1      OPC=nop             
  nop                          #  67    0xaaa5d  1      OPC=nop             
  nop                          #  68    0xaaa5e  1      OPC=nop             
  nop                          #  69    0xaaa5f  1      OPC=nop             
  nop                          #  70    0xaaa60  1      OPC=nop             
  nop                          #  71    0xaaa61  1      OPC=nop             
  nop                          #  72    0xaaa62  1      OPC=nop             
  nop                          #  73    0xaaa63  1      OPC=nop             
  nop                          #  74    0xaaa64  1      OPC=nop             
  nop                          #  75    0xaaa65  1      OPC=nop             
  nop                          #  76    0xaaa66  1      OPC=nop             
                                                                            
.size _ZNSs4_Rep10_M_refcopyEv, .-_ZNSs4_Rep10_M_refcopyEv

