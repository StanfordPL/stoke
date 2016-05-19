
@benchmark_data = {

  # not in .so
  "bcopy" => { :args => [:string, :string, :len], 
               :overlap => true },

  # not in .so
  "bzero" => { :args => [:string, :len] },

  # calls memchr, etc.
  "memccpy" => { :args => [:string, :string, :char, :len], 
                 :overlap => false,
                 :test_archive => "string/test-memccpy.o",
                 :test_function => "simple_memccpy" },

  "memchr" => { :args => [:string, :char, :len],
                :enabled => false,
                :versions => [
                  { :name     => "production",
                    :archive  => "libc.so",
                    :function => "memchr" }
                ]},

  "memcmp" => { :args => [:string, :string, :len], 
                :overlap => true, 
                :compare => true,
                :versions => [
                  { :name     => "simple",
                    :archive  => "string/test-memcmp.o",
                    :function => "simple_memcmp" },

                  { :name     => "production",
                    :archive  => "libc.so",
                    :function => "__GI_memcmp" }
                ]},

  "memcpy" => { :args => [:string, :string, :len], 
                :overlap => false },

  "memmem" => { :args => [:string, :len, :string, :len], 
                :overlap => true,
                :test_archive => "string/test-memmem.o",
                :test_function => "simple_memmem" },

  "memmove" => { :args => [:string, :string, :len], 
                 :overlap => true },

  "mempcpy" => { :args => [:string, :string, :len], :overlap => true },

  "memrchr" => { :args => [:string, :char, :len] },

  "memset" => { :args => [:string, :char, :len],
                :versions => [
                  { :name     => "production",
                    :archive  => "libc.so",
                    :function => "__GI_memset" },
                  { :name     => "simple",
                    :archive  => "string/test-bzero.o",
                    :function => "simple_memset" } ]},

  "rawmemchr" => { },
  "stpcpy" => { :args => [:string, :string],
                :overlap => false,
                :versions => [
                  { :name     => "production",
                    :archive  => "libc.so",
                    :function => "__GI___stpcpy" },
                  { :name     => "simple",
                    :archive  => "string/test-stpcpy.o",
                    :function => "simple_stpcpy" } ]},

  "stpncpy" => { },
  "strcasecmp" => { },
  "strcasestr" => { },
  "strcat" => { },
  "strchr" => { },
  "strchrnul" => { },
  "strcmp" => { },
  "strcpy" => { },
  "strcspn" => { },
  "strlen" => { },
  "strncasecmp" => { },
  "strncat" => { },
  "strncmp" => { },
  "strncpy" => { },
  "strnlen" => { },
  "strpbrk" => { },
  "strrchr" => { },
  "strspn" => { },
  "strstr" => { },
  "wcpcpy" => { },
  "wcpncpy" => { },
  "wcscat" => { },
  "wcschrnul" => { },
  "wcscmp" => { },
  "wcscpy" => { },
  "wcscspn" => { },
  "wcsncat" => { },
  "wcsncmp" => { },
  "wcsncpy" => { },
  "wcsnlen" => { :args => [:string],
                 :width => 4,
                 :versions => [
                   { :name => "production",
                     :archive => "libc.so",
                     :function => "wcsnlen" },
                   { :name => "simple",
                     :archive => "string/test-wcsnlen.s",
                     :function => "simple_wcsnlen" }
                  ]},
  "wcspbrk" => { },
  "wcsrchr" => { },
  "wcsspn" => { },
  "wmemchr" => { },
  "wmemcmp" => { },
  "wmemset" => { }
}
