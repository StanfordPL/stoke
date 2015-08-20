  .text
  .globl _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs
  .type _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs, @function

#! file-offset 0xb7800
#! rip-offset  0x77800
#! capacity    96 bytes

# Text                                                                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs:  #        0x77800  0      OPC=<label>         
  movl %edi, %edi                                                                            #  1     0x77800  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                            #  2     0x77802  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                            #  3     0x77805  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                            #  4     0x77808  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                            #  5     0x7780a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                   #  6     0x7780c  4      OPC=movl_r32_m32    
  movzbl %dl, %edx                                                                           #  7     0x77810  3      OPC=movzbl_r32_r8   
  movsbl %r8b, %r8d                                                                          #  8     0x77813  4      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                            #  9     0x77817  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                                #  10    0x77819  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                             #  11    0x7781e  2      OPC=xchgw_ax_r16    
  nop                                                                                        #  12    0x77820  1      OPC=nop             
  nop                                                                                        #  13    0x77821  1      OPC=nop             
  nop                                                                                        #  14    0x77822  1      OPC=nop             
  nop                                                                                        #  15    0x77823  1      OPC=nop             
  nop                                                                                        #  16    0x77824  1      OPC=nop             
  nop                                                                                        #  17    0x77825  1      OPC=nop             
  nop                                                                                        #  18    0x77826  1      OPC=nop             
  nop                                                                                        #  19    0x77827  1      OPC=nop             
  nop                                                                                        #  20    0x77828  1      OPC=nop             
  nop                                                                                        #  21    0x77829  1      OPC=nop             
  nop                                                                                        #  22    0x7782a  1      OPC=nop             
  nop                                                                                        #  23    0x7782b  1      OPC=nop             
  nop                                                                                        #  24    0x7782c  1      OPC=nop             
  nop                                                                                        #  25    0x7782d  1      OPC=nop             
  nop                                                                                        #  26    0x7782e  1      OPC=nop             
  nop                                                                                        #  27    0x7782f  1      OPC=nop             
  nop                                                                                        #  28    0x77830  1      OPC=nop             
  nop                                                                                        #  29    0x77831  1      OPC=nop             
  nop                                                                                        #  30    0x77832  1      OPC=nop             
  nop                                                                                        #  31    0x77833  1      OPC=nop             
  nop                                                                                        #  32    0x77834  1      OPC=nop             
  nop                                                                                        #  33    0x77835  1      OPC=nop             
  nop                                                                                        #  34    0x77836  1      OPC=nop             
  nop                                                                                        #  35    0x77837  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                     #  36    0x77838  6      OPC=andl_r32_imm32  
  nop                                                                                        #  37    0x7783e  1      OPC=nop             
  nop                                                                                        #  38    0x7783f  1      OPC=nop             
  nop                                                                                        #  39    0x77840  1      OPC=nop             
  addq %r15, %rax                                                                            #  40    0x77841  3      OPC=addq_r64_r64    
  callq %rax                                                                                 #  41    0x77844  2      OPC=callq_r64       
  addl $0x8, %esp                                                                            #  42    0x77846  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                            #  43    0x77849  3      OPC=addq_r64_r64    
  popq %r11                                                                                  #  44    0x7784c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                    #  45    0x7784e  7      OPC=andl_r32_imm32  
  nop                                                                                        #  46    0x77855  1      OPC=nop             
  nop                                                                                        #  47    0x77856  1      OPC=nop             
  nop                                                                                        #  48    0x77857  1      OPC=nop             
  nop                                                                                        #  49    0x77858  1      OPC=nop             
  addq %r15, %r11                                                                            #  50    0x77859  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                  #  51    0x7785c  3      OPC=jmpq_r64        
  nop                                                                                        #  52    0x7785f  1      OPC=nop             
  nop                                                                                        #  53    0x77860  1      OPC=nop             
  nop                                                                                        #  54    0x77861  1      OPC=nop             
  nop                                                                                        #  55    0x77862  1      OPC=nop             
  nop                                                                                        #  56    0x77863  1      OPC=nop             
  nop                                                                                        #  57    0x77864  1      OPC=nop             
  nop                                                                                        #  58    0x77865  1      OPC=nop             
  nop                                                                                        #  59    0x77866  1      OPC=nop             
  nop                                                                                        #  60    0x77867  1      OPC=nop             
  nop                                                                                        #  61    0x77868  1      OPC=nop             
  nop                                                                                        #  62    0x77869  1      OPC=nop             
  nop                                                                                        #  63    0x7786a  1      OPC=nop             
  nop                                                                                        #  64    0x7786b  1      OPC=nop             
  nop                                                                                        #  65    0x7786c  1      OPC=nop             
                                                                                                                                          
.size _ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs, .-_ZNKSt9money_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_bRSt8ios_basecRKSs

