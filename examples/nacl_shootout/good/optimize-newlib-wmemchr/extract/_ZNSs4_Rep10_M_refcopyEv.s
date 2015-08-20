  .text
  .globl _ZNSs4_Rep10_M_refcopyEv
  .type _ZNSs4_Rep10_M_refcopyEv, @function

#! file-offset 0xead00
#! rip-offset  0xaad00
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep10_M_refcopyEv:     #        0xaad00  0      OPC=<label>         
  movl %edi, %eax              #  1     0xaad00  2      OPC=movl_r32_r32    
  cmpl $0x10073580, %eax       #  2     0xaad02  5      OPC=cmpl_eax_imm32  
  jne .L_aad40                 #  3     0xaad07  2      OPC=jne_label       
  nop                          #  4     0xaad09  1      OPC=nop             
  nop                          #  5     0xaad0a  1      OPC=nop             
  nop                          #  6     0xaad0b  1      OPC=nop             
  nop                          #  7     0xaad0c  1      OPC=nop             
  nop                          #  8     0xaad0d  1      OPC=nop             
  nop                          #  9     0xaad0e  1      OPC=nop             
  nop                          #  10    0xaad0f  1      OPC=nop             
  nop                          #  11    0xaad10  1      OPC=nop             
  nop                          #  12    0xaad11  1      OPC=nop             
  nop                          #  13    0xaad12  1      OPC=nop             
  nop                          #  14    0xaad13  1      OPC=nop             
  nop                          #  15    0xaad14  1      OPC=nop             
  nop                          #  16    0xaad15  1      OPC=nop             
  nop                          #  17    0xaad16  1      OPC=nop             
  nop                          #  18    0xaad17  1      OPC=nop             
  nop                          #  19    0xaad18  1      OPC=nop             
  nop                          #  20    0xaad19  1      OPC=nop             
  nop                          #  21    0xaad1a  1      OPC=nop             
  nop                          #  22    0xaad1b  1      OPC=nop             
  nop                          #  23    0xaad1c  1      OPC=nop             
  nop                          #  24    0xaad1d  1      OPC=nop             
  nop                          #  25    0xaad1e  1      OPC=nop             
  nop                          #  26    0xaad1f  1      OPC=nop             
.L_aad20:                      #        0xaad20  0      OPC=<label>         
  popq %r11                    #  27    0xaad20  2      OPC=popq_r64_1      
  addl $0xc, %eax              #  28    0xaad22  3      OPC=addl_r32_imm8   
  andl $0xffffffe0, %r11d      #  29    0xaad25  7      OPC=andl_r32_imm32  
  nop                          #  30    0xaad2c  1      OPC=nop             
  nop                          #  31    0xaad2d  1      OPC=nop             
  nop                          #  32    0xaad2e  1      OPC=nop             
  nop                          #  33    0xaad2f  1      OPC=nop             
  addq %r15, %r11              #  34    0xaad30  3      OPC=addq_r64_r64    
  jmpq %r11                    #  35    0xaad33  3      OPC=jmpq_r64        
  xchgw %ax, %ax               #  36    0xaad36  2      OPC=xchgw_ax_r16    
  nop                          #  37    0xaad38  1      OPC=nop             
  nop                          #  38    0xaad39  1      OPC=nop             
  nop                          #  39    0xaad3a  1      OPC=nop             
  nop                          #  40    0xaad3b  1      OPC=nop             
  nop                          #  41    0xaad3c  1      OPC=nop             
  nop                          #  42    0xaad3d  1      OPC=nop             
  nop                          #  43    0xaad3e  1      OPC=nop             
  nop                          #  44    0xaad3f  1      OPC=nop             
  nop                          #  45    0xaad40  1      OPC=nop             
  nop                          #  46    0xaad41  1      OPC=nop             
  nop                          #  47    0xaad42  1      OPC=nop             
  nop                          #  48    0xaad43  1      OPC=nop             
  nop                          #  49    0xaad44  1      OPC=nop             
  nop                          #  50    0xaad45  1      OPC=nop             
  nop                          #  51    0xaad46  1      OPC=nop             
.L_aad40:                      #        0xaad47  0      OPC=<label>         
  movl %eax, %eax              #  52    0xaad47  2      OPC=movl_r32_r32    
  addl $0x1, 0x8(%r15,%rax,1)  #  53    0xaad49  6      OPC=addl_m32_imm8   
  jmpq .L_aad20                #  54    0xaad4f  2      OPC=jmpq_label      
  nop                          #  55    0xaad51  1      OPC=nop             
  nop                          #  56    0xaad52  1      OPC=nop             
  nop                          #  57    0xaad53  1      OPC=nop             
  nop                          #  58    0xaad54  1      OPC=nop             
  nop                          #  59    0xaad55  1      OPC=nop             
  nop                          #  60    0xaad56  1      OPC=nop             
  nop                          #  61    0xaad57  1      OPC=nop             
  nop                          #  62    0xaad58  1      OPC=nop             
  nop                          #  63    0xaad59  1      OPC=nop             
  nop                          #  64    0xaad5a  1      OPC=nop             
  nop                          #  65    0xaad5b  1      OPC=nop             
  nop                          #  66    0xaad5c  1      OPC=nop             
  nop                          #  67    0xaad5d  1      OPC=nop             
  nop                          #  68    0xaad5e  1      OPC=nop             
  nop                          #  69    0xaad5f  1      OPC=nop             
  nop                          #  70    0xaad60  1      OPC=nop             
  nop                          #  71    0xaad61  1      OPC=nop             
  nop                          #  72    0xaad62  1      OPC=nop             
  nop                          #  73    0xaad63  1      OPC=nop             
  nop                          #  74    0xaad64  1      OPC=nop             
  nop                          #  75    0xaad65  1      OPC=nop             
  nop                          #  76    0xaad66  1      OPC=nop             
                                                                            
.size _ZNSs4_Rep10_M_refcopyEv, .-_ZNSs4_Rep10_M_refcopyEv

