  .text
  .globl _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i
  .type _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, @function

#! file-offset 0xf2ec0
#! rip-offset  0xb2ec0
#! capacity    128 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i:  #        0xb2ec0  0      OPC=<label>         
  pushq %r12                                                               #  1     0xb2ec0  2      OPC=pushq_r64_1     
  movq %rdi, %rax                                                          #  2     0xb2ec2  3      OPC=movq_r64_r64    
  movl %edx, %r12d                                                         #  3     0xb2ec5  3      OPC=movl_r32_r32    
  shrq $0x20, %rax                                                         #  4     0xb2ec8  4      OPC=shrq_r64_imm8   
  movl %esi, %esi                                                          #  5     0xb2ecc  2      OPC=movl_r32_r32    
  pushq %rbx                                                               #  6     0xb2ece  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  7     0xb2ecf  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                          #  8     0xb2ed1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  9     0xb2ed4  3      OPC=addq_r64_r64    
  testb %al, %al                                                           #  10    0xb2ed7  2      OPC=testb_r8_r8     
  jne .L_b2f20                                                             #  11    0xb2ed9  2      OPC=jne_label       
  nop                                                                      #  12    0xb2edb  1      OPC=nop             
  nop                                                                      #  13    0xb2edc  1      OPC=nop             
  nop                                                                      #  14    0xb2edd  1      OPC=nop             
  nop                                                                      #  15    0xb2ede  1      OPC=nop             
  nop                                                                      #  16    0xb2edf  1      OPC=nop             
  movl %ebx, %ebx                                                          #  17    0xb2ee0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                 #  18    0xb2ee2  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                                          #  19    0xb2ee6  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                          #  20    0xb2ee8  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                             #  21    0xb2eea  5      OPC=movl_r32_m32    
  nop                                                                      #  22    0xb2eef  1      OPC=nop             
  nop                                                                      #  23    0xb2ef0  1      OPC=nop             
  nop                                                                      #  24    0xb2ef1  1      OPC=nop             
  nop                                                                      #  25    0xb2ef2  1      OPC=nop             
  nop                                                                      #  26    0xb2ef3  1      OPC=nop             
  nop                                                                      #  27    0xb2ef4  1      OPC=nop             
  nop                                                                      #  28    0xb2ef5  1      OPC=nop             
  nop                                                                      #  29    0xb2ef6  1      OPC=nop             
  nop                                                                      #  30    0xb2ef7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                   #  31    0xb2ef8  6      OPC=andl_r32_imm32  
  nop                                                                      #  32    0xb2efe  1      OPC=nop             
  nop                                                                      #  33    0xb2eff  1      OPC=nop             
  nop                                                                      #  34    0xb2f00  1      OPC=nop             
  addq %r15, %rax                                                          #  35    0xb2f01  3      OPC=addq_r64_r64    
  callq %rax                                                               #  36    0xb2f04  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                         #  37    0xb2f06  3      OPC=cmpl_r32_r32    
  setne %al                                                                #  38    0xb2f09  3      OPC=setne_r8        
  nop                                                                      #  39    0xb2f0c  1      OPC=nop             
  nop                                                                      #  40    0xb2f0d  1      OPC=nop             
  nop                                                                      #  41    0xb2f0e  1      OPC=nop             
  nop                                                                      #  42    0xb2f0f  1      OPC=nop             
  nop                                                                      #  43    0xb2f10  1      OPC=nop             
  nop                                                                      #  44    0xb2f11  1      OPC=nop             
  nop                                                                      #  45    0xb2f12  1      OPC=nop             
  nop                                                                      #  46    0xb2f13  1      OPC=nop             
  nop                                                                      #  47    0xb2f14  1      OPC=nop             
  nop                                                                      #  48    0xb2f15  1      OPC=nop             
  nop                                                                      #  49    0xb2f16  1      OPC=nop             
  nop                                                                      #  50    0xb2f17  1      OPC=nop             
  nop                                                                      #  51    0xb2f18  1      OPC=nop             
  nop                                                                      #  52    0xb2f19  1      OPC=nop             
  nop                                                                      #  53    0xb2f1a  1      OPC=nop             
  nop                                                                      #  54    0xb2f1b  1      OPC=nop             
  nop                                                                      #  55    0xb2f1c  1      OPC=nop             
  nop                                                                      #  56    0xb2f1d  1      OPC=nop             
  nop                                                                      #  57    0xb2f1e  1      OPC=nop             
  nop                                                                      #  58    0xb2f1f  1      OPC=nop             
  nop                                                                      #  59    0xb2f20  1      OPC=nop             
  nop                                                                      #  60    0xb2f21  1      OPC=nop             
  nop                                                                      #  61    0xb2f22  1      OPC=nop             
  nop                                                                      #  62    0xb2f23  1      OPC=nop             
  nop                                                                      #  63    0xb2f24  1      OPC=nop             
  nop                                                                      #  64    0xb2f25  1      OPC=nop             
.L_b2f20:                                                                  #        0xb2f26  0      OPC=<label>         
  movzbl %al, %eax                                                         #  65    0xb2f26  3      OPC=movzbl_r32_r8   
  addl $0x8, %esp                                                          #  66    0xb2f29  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  67    0xb2f2c  3      OPC=addq_r64_r64    
  shlq $0x20, %rax                                                         #  68    0xb2f2f  4      OPC=shlq_r64_imm8   
  orq %rbx, %rax                                                           #  69    0xb2f33  3      OPC=orq_r64_r64     
  popq %rbx                                                                #  70    0xb2f36  1      OPC=popq_r64_1      
  popq %r12                                                                #  71    0xb2f37  2      OPC=popq_r64_1      
  popq %r11                                                                #  72    0xb2f39  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  73    0xb2f3b  7      OPC=andl_r32_imm32  
  nop                                                                      #  74    0xb2f42  1      OPC=nop             
  nop                                                                      #  75    0xb2f43  1      OPC=nop             
  nop                                                                      #  76    0xb2f44  1      OPC=nop             
  nop                                                                      #  77    0xb2f45  1      OPC=nop             
  addq %r15, %r11                                                          #  78    0xb2f46  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  79    0xb2f49  3      OPC=jmpq_r64        
  nop                                                                      #  80    0xb2f4c  1      OPC=nop             
                                                                                                                        
.size _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, .-_ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i

