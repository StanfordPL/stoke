  .text
  .globl _ZNKSt8numpunctIcE11do_truenameEv
  .type _ZNKSt8numpunctIcE11do_truenameEv, @function

#! file-offset 0xbe880
#! rip-offset  0x7e880
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE11do_truenameEv:  #        0x7e880  0      OPC=<label>         
  pushq %rbx                         #  1     0x7e880  1      OPC=pushq_r64_1     
  movl %esi, %esi                    #  2     0x7e881  2      OPC=movl_r32_r32    
  movl %edi, %ebx                    #  3     0x7e883  2      OPC=movl_r32_r32    
  movl %ebx, %edi                    #  4     0x7e885  2      OPC=movl_r32_r32    
  subl $0x10, %esp                   #  5     0x7e887  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0x7e88a  3      OPC=addq_r64_r64    
  movl %esi, %esi                    #  7     0x7e88d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax        #  8     0x7e88f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx               #  9     0x7e894  4      OPC=leal_r32_m16    
  movl %eax, %eax                    #  10    0x7e898  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %esi       #  11    0x7e89a  5      OPC=movl_r32_m32    
  nop                                #  12    0x7e89f  1      OPC=nop             
  nop                                #  13    0x7e8a0  1      OPC=nop             
  nop                                #  14    0x7e8a1  1      OPC=nop             
  nop                                #  15    0x7e8a2  1      OPC=nop             
  nop                                #  16    0x7e8a3  1      OPC=nop             
  nop                                #  17    0x7e8a4  1      OPC=nop             
  nop                                #  18    0x7e8a5  1      OPC=nop             
  nop                                #  19    0x7e8a6  1      OPC=nop             
  nop                                #  20    0x7e8a7  1      OPC=nop             
  nop                                #  21    0x7e8a8  1      OPC=nop             
  nop                                #  22    0x7e8a9  1      OPC=nop             
  nop                                #  23    0x7e8aa  1      OPC=nop             
  nop                                #  24    0x7e8ab  1      OPC=nop             
  nop                                #  25    0x7e8ac  1      OPC=nop             
  nop                                #  26    0x7e8ad  1      OPC=nop             
  nop                                #  27    0x7e8ae  1      OPC=nop             
  nop                                #  28    0x7e8af  1      OPC=nop             
  nop                                #  29    0x7e8b0  1      OPC=nop             
  nop                                #  30    0x7e8b1  1      OPC=nop             
  nop                                #  31    0x7e8b2  1      OPC=nop             
  nop                                #  32    0x7e8b3  1      OPC=nop             
  nop                                #  33    0x7e8b4  1      OPC=nop             
  nop                                #  34    0x7e8b5  1      OPC=nop             
  nop                                #  35    0x7e8b6  1      OPC=nop             
  nop                                #  36    0x7e8b7  1      OPC=nop             
  nop                                #  37    0x7e8b8  1      OPC=nop             
  nop                                #  38    0x7e8b9  1      OPC=nop             
  nop                                #  39    0x7e8ba  1      OPC=nop             
  callq ._ZNSsC1EPKcRKSaIcE          #  40    0x7e8bb  5      OPC=callq_label     
  movl %ebx, %eax                    #  41    0x7e8c0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                   #  42    0x7e8c2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  43    0x7e8c5  3      OPC=addq_r64_r64    
  popq %rbx                          #  44    0x7e8c8  1      OPC=popq_r64_1      
  popq %r11                          #  45    0x7e8c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  46    0x7e8cb  7      OPC=andl_r32_imm32  
  nop                                #  47    0x7e8d2  1      OPC=nop             
  nop                                #  48    0x7e8d3  1      OPC=nop             
  nop                                #  49    0x7e8d4  1      OPC=nop             
  nop                                #  50    0x7e8d5  1      OPC=nop             
  addq %r15, %r11                    #  51    0x7e8d6  3      OPC=addq_r64_r64    
  jmpq %r11                          #  52    0x7e8d9  3      OPC=jmpq_r64        
  nop                                #  53    0x7e8dc  1      OPC=nop             
  nop                                #  54    0x7e8dd  1      OPC=nop             
  nop                                #  55    0x7e8de  1      OPC=nop             
  nop                                #  56    0x7e8df  1      OPC=nop             
  nop                                #  57    0x7e8e0  1      OPC=nop             
  nop                                #  58    0x7e8e1  1      OPC=nop             
  nop                                #  59    0x7e8e2  1      OPC=nop             
  nop                                #  60    0x7e8e3  1      OPC=nop             
  nop                                #  61    0x7e8e4  1      OPC=nop             
  nop                                #  62    0x7e8e5  1      OPC=nop             
  nop                                #  63    0x7e8e6  1      OPC=nop             
  movl %eax, %edi                    #  64    0x7e8e7  2      OPC=movl_r32_r32    
  nop                                #  65    0x7e8e9  1      OPC=nop             
  nop                                #  66    0x7e8ea  1      OPC=nop             
  nop                                #  67    0x7e8eb  1      OPC=nop             
  nop                                #  68    0x7e8ec  1      OPC=nop             
  nop                                #  69    0x7e8ed  1      OPC=nop             
  nop                                #  70    0x7e8ee  1      OPC=nop             
  nop                                #  71    0x7e8ef  1      OPC=nop             
  nop                                #  72    0x7e8f0  1      OPC=nop             
  nop                                #  73    0x7e8f1  1      OPC=nop             
  nop                                #  74    0x7e8f2  1      OPC=nop             
  nop                                #  75    0x7e8f3  1      OPC=nop             
  nop                                #  76    0x7e8f4  1      OPC=nop             
  nop                                #  77    0x7e8f5  1      OPC=nop             
  nop                                #  78    0x7e8f6  1      OPC=nop             
  nop                                #  79    0x7e8f7  1      OPC=nop             
  nop                                #  80    0x7e8f8  1      OPC=nop             
  nop                                #  81    0x7e8f9  1      OPC=nop             
  nop                                #  82    0x7e8fa  1      OPC=nop             
  nop                                #  83    0x7e8fb  1      OPC=nop             
  nop                                #  84    0x7e8fc  1      OPC=nop             
  nop                                #  85    0x7e8fd  1      OPC=nop             
  nop                                #  86    0x7e8fe  1      OPC=nop             
  nop                                #  87    0x7e8ff  1      OPC=nop             
  nop                                #  88    0x7e900  1      OPC=nop             
  nop                                #  89    0x7e901  1      OPC=nop             
  callq ._Unwind_Resume              #  90    0x7e902  5      OPC=callq_label     
                                                                                  
.size _ZNKSt8numpunctIcE11do_truenameEv, .-_ZNKSt8numpunctIcE11do_truenameEv

