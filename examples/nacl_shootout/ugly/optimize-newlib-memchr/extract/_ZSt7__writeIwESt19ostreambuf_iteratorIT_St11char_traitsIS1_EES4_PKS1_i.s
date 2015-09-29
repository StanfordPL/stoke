  .text
  .globl _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i
  .type _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, @function

#! file-offset 0xf35e0
#! rip-offset  0xb35e0
#! capacity    128 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i:  #        0xb35e0  0      OPC=<label>         
  pushq %r12                                                               #  1     0xb35e0  2      OPC=pushq_r64_1     
  movq %rdi, %rax                                                          #  2     0xb35e2  3      OPC=movq_r64_r64    
  movl %edx, %r12d                                                         #  3     0xb35e5  3      OPC=movl_r32_r32    
  shrq $0x20, %rax                                                         #  4     0xb35e8  4      OPC=shrq_r64_imm8   
  movl %esi, %esi                                                          #  5     0xb35ec  2      OPC=movl_r32_r32    
  pushq %rbx                                                               #  6     0xb35ee  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                          #  7     0xb35ef  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                          #  8     0xb35f1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                          #  9     0xb35f4  3      OPC=addq_r64_r64    
  testb %al, %al                                                           #  10    0xb35f7  2      OPC=testb_r8_r8     
  jne .L_b3640                                                             #  11    0xb35f9  2      OPC=jne_label       
  nop                                                                      #  12    0xb35fb  1      OPC=nop             
  nop                                                                      #  13    0xb35fc  1      OPC=nop             
  nop                                                                      #  14    0xb35fd  1      OPC=nop             
  nop                                                                      #  15    0xb35fe  1      OPC=nop             
  nop                                                                      #  16    0xb35ff  1      OPC=nop             
  movl %ebx, %ebx                                                          #  17    0xb3600  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                 #  18    0xb3602  4      OPC=movl_r32_m32    
  movl %ebx, %edi                                                          #  19    0xb3606  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                          #  20    0xb3608  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %eax                                             #  21    0xb360a  5      OPC=movl_r32_m32    
  nop                                                                      #  22    0xb360f  1      OPC=nop             
  nop                                                                      #  23    0xb3610  1      OPC=nop             
  nop                                                                      #  24    0xb3611  1      OPC=nop             
  nop                                                                      #  25    0xb3612  1      OPC=nop             
  nop                                                                      #  26    0xb3613  1      OPC=nop             
  nop                                                                      #  27    0xb3614  1      OPC=nop             
  nop                                                                      #  28    0xb3615  1      OPC=nop             
  nop                                                                      #  29    0xb3616  1      OPC=nop             
  nop                                                                      #  30    0xb3617  1      OPC=nop             
  andl $0xffffffe0, %eax                                                   #  31    0xb3618  6      OPC=andl_r32_imm32  
  nop                                                                      #  32    0xb361e  1      OPC=nop             
  nop                                                                      #  33    0xb361f  1      OPC=nop             
  nop                                                                      #  34    0xb3620  1      OPC=nop             
  addq %r15, %rax                                                          #  35    0xb3621  3      OPC=addq_r64_r64    
  callq %rax                                                               #  36    0xb3624  2      OPC=callq_r64       
  cmpl %eax, %r12d                                                         #  37    0xb3626  3      OPC=cmpl_r32_r32    
  setne %al                                                                #  38    0xb3629  3      OPC=setne_r8        
  nop                                                                      #  39    0xb362c  1      OPC=nop             
  nop                                                                      #  40    0xb362d  1      OPC=nop             
  nop                                                                      #  41    0xb362e  1      OPC=nop             
  nop                                                                      #  42    0xb362f  1      OPC=nop             
  nop                                                                      #  43    0xb3630  1      OPC=nop             
  nop                                                                      #  44    0xb3631  1      OPC=nop             
  nop                                                                      #  45    0xb3632  1      OPC=nop             
  nop                                                                      #  46    0xb3633  1      OPC=nop             
  nop                                                                      #  47    0xb3634  1      OPC=nop             
  nop                                                                      #  48    0xb3635  1      OPC=nop             
  nop                                                                      #  49    0xb3636  1      OPC=nop             
  nop                                                                      #  50    0xb3637  1      OPC=nop             
  nop                                                                      #  51    0xb3638  1      OPC=nop             
  nop                                                                      #  52    0xb3639  1      OPC=nop             
  nop                                                                      #  53    0xb363a  1      OPC=nop             
  nop                                                                      #  54    0xb363b  1      OPC=nop             
  nop                                                                      #  55    0xb363c  1      OPC=nop             
  nop                                                                      #  56    0xb363d  1      OPC=nop             
  nop                                                                      #  57    0xb363e  1      OPC=nop             
  nop                                                                      #  58    0xb363f  1      OPC=nop             
  nop                                                                      #  59    0xb3640  1      OPC=nop             
  nop                                                                      #  60    0xb3641  1      OPC=nop             
  nop                                                                      #  61    0xb3642  1      OPC=nop             
  nop                                                                      #  62    0xb3643  1      OPC=nop             
  nop                                                                      #  63    0xb3644  1      OPC=nop             
  nop                                                                      #  64    0xb3645  1      OPC=nop             
.L_b3640:                                                                  #        0xb3646  0      OPC=<label>         
  movzbl %al, %eax                                                         #  65    0xb3646  3      OPC=movzbl_r32_r8   
  addl $0x8, %esp                                                          #  66    0xb3649  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                          #  67    0xb364c  3      OPC=addq_r64_r64    
  shlq $0x20, %rax                                                         #  68    0xb364f  4      OPC=shlq_r64_imm8   
  orq %rbx, %rax                                                           #  69    0xb3653  3      OPC=orq_r64_r64     
  popq %rbx                                                                #  70    0xb3656  1      OPC=popq_r64_1      
  popq %r12                                                                #  71    0xb3657  2      OPC=popq_r64_1      
  popq %r11                                                                #  72    0xb3659  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                  #  73    0xb365b  7      OPC=andl_r32_imm32  
  nop                                                                      #  74    0xb3662  1      OPC=nop             
  nop                                                                      #  75    0xb3663  1      OPC=nop             
  nop                                                                      #  76    0xb3664  1      OPC=nop             
  nop                                                                      #  77    0xb3665  1      OPC=nop             
  addq %r15, %r11                                                          #  78    0xb3666  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  79    0xb3669  3      OPC=jmpq_r64        
  nop                                                                      #  80    0xb366c  1      OPC=nop             
                                                                                                                        
.size _ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i, .-_ZSt7__writeIwESt19ostreambuf_iteratorIT_St11char_traitsIS1_EES4_PKS1_i

