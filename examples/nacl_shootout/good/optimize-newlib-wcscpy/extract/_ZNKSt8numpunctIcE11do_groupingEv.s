  .text
  .globl _ZNKSt8numpunctIcE11do_groupingEv
  .type _ZNKSt8numpunctIcE11do_groupingEv, @function

#! file-offset 0xbdee0
#! rip-offset  0x7dee0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE11do_groupingEv:  #        0x7dee0  0      OPC=<label>         
  pushq %rbx                         #  1     0x7dee0  1      OPC=pushq_r64_1     
  movl %esi, %esi                    #  2     0x7dee1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                    #  3     0x7dee3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                    #  4     0x7dee5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                   #  5     0x7dee7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0x7deea  3      OPC=addq_r64_r64    
  movl %esi, %esi                    #  7     0x7deed  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax        #  8     0x7deef  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx               #  9     0x7def4  4      OPC=leal_r32_m16    
  movl %eax, %eax                    #  10    0x7def8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %esi        #  11    0x7defa  5      OPC=movl_r32_m32    
  nop                                #  12    0x7deff  1      OPC=nop             
  nop                                #  13    0x7df00  1      OPC=nop             
  nop                                #  14    0x7df01  1      OPC=nop             
  nop                                #  15    0x7df02  1      OPC=nop             
  nop                                #  16    0x7df03  1      OPC=nop             
  nop                                #  17    0x7df04  1      OPC=nop             
  nop                                #  18    0x7df05  1      OPC=nop             
  nop                                #  19    0x7df06  1      OPC=nop             
  nop                                #  20    0x7df07  1      OPC=nop             
  nop                                #  21    0x7df08  1      OPC=nop             
  nop                                #  22    0x7df09  1      OPC=nop             
  nop                                #  23    0x7df0a  1      OPC=nop             
  nop                                #  24    0x7df0b  1      OPC=nop             
  nop                                #  25    0x7df0c  1      OPC=nop             
  nop                                #  26    0x7df0d  1      OPC=nop             
  nop                                #  27    0x7df0e  1      OPC=nop             
  nop                                #  28    0x7df0f  1      OPC=nop             
  nop                                #  29    0x7df10  1      OPC=nop             
  nop                                #  30    0x7df11  1      OPC=nop             
  nop                                #  31    0x7df12  1      OPC=nop             
  nop                                #  32    0x7df13  1      OPC=nop             
  nop                                #  33    0x7df14  1      OPC=nop             
  nop                                #  34    0x7df15  1      OPC=nop             
  nop                                #  35    0x7df16  1      OPC=nop             
  nop                                #  36    0x7df17  1      OPC=nop             
  nop                                #  37    0x7df18  1      OPC=nop             
  nop                                #  38    0x7df19  1      OPC=nop             
  nop                                #  39    0x7df1a  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE          #  40    0x7df1b  5      OPC=callq_label     
  movl %ebx, %eax                    #  41    0x7df20  2      OPC=movl_r32_r32    
  addl $0x10, %esp                   #  42    0x7df22  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  43    0x7df25  3      OPC=addq_r64_r64    
  popq %rbx                          #  44    0x7df28  1      OPC=popq_r64_1      
  popq %r11                          #  45    0x7df29  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  46    0x7df2b  7      OPC=andl_r32_imm32  
  nop                                #  47    0x7df32  1      OPC=nop             
  nop                                #  48    0x7df33  1      OPC=nop             
  nop                                #  49    0x7df34  1      OPC=nop             
  nop                                #  50    0x7df35  1      OPC=nop             
  addq %r15, %r11                    #  51    0x7df36  3      OPC=addq_r64_r64    
  jmpq %r11                          #  52    0x7df39  3      OPC=jmpq_r64        
  nop                                #  53    0x7df3c  1      OPC=nop             
  nop                                #  54    0x7df3d  1      OPC=nop             
  nop                                #  55    0x7df3e  1      OPC=nop             
  nop                                #  56    0x7df3f  1      OPC=nop             
  nop                                #  57    0x7df40  1      OPC=nop             
  nop                                #  58    0x7df41  1      OPC=nop             
  nop                                #  59    0x7df42  1      OPC=nop             
  nop                                #  60    0x7df43  1      OPC=nop             
  nop                                #  61    0x7df44  1      OPC=nop             
  nop                                #  62    0x7df45  1      OPC=nop             
  nop                                #  63    0x7df46  1      OPC=nop             
  movl %eax, %edi                    #  64    0x7df47  2      OPC=movl_r32_r32    
  nop                                #  65    0x7df49  1      OPC=nop             
  nop                                #  66    0x7df4a  1      OPC=nop             
  nop                                #  67    0x7df4b  1      OPC=nop             
  nop                                #  68    0x7df4c  1      OPC=nop             
  nop                                #  69    0x7df4d  1      OPC=nop             
  nop                                #  70    0x7df4e  1      OPC=nop             
  nop                                #  71    0x7df4f  1      OPC=nop             
  nop                                #  72    0x7df50  1      OPC=nop             
  nop                                #  73    0x7df51  1      OPC=nop             
  nop                                #  74    0x7df52  1      OPC=nop             
  nop                                #  75    0x7df53  1      OPC=nop             
  nop                                #  76    0x7df54  1      OPC=nop             
  nop                                #  77    0x7df55  1      OPC=nop             
  nop                                #  78    0x7df56  1      OPC=nop             
  nop                                #  79    0x7df57  1      OPC=nop             
  nop                                #  80    0x7df58  1      OPC=nop             
  nop                                #  81    0x7df59  1      OPC=nop             
  nop                                #  82    0x7df5a  1      OPC=nop             
  nop                                #  83    0x7df5b  1      OPC=nop             
  nop                                #  84    0x7df5c  1      OPC=nop             
  nop                                #  85    0x7df5d  1      OPC=nop             
  nop                                #  86    0x7df5e  1      OPC=nop             
  nop                                #  87    0x7df5f  1      OPC=nop             
  nop                                #  88    0x7df60  1      OPC=nop             
  nop                                #  89    0x7df61  1      OPC=nop             
  callq ._Unwind_Resume              #  90    0x7df62  5      OPC=callq_label     
                                                                                  
.size _ZNKSt8numpunctIcE11do_groupingEv, .-_ZNKSt8numpunctIcE11do_groupingEv

