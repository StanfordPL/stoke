%define packagename pstreams

Name:           pstreams-devel
Version:        0.8.1
Release:        1%{?dist}
Summary:        POSIX Process Control in C++

Group:          Development/Libraries
License:        LGPLv3+
URL:            http://%{packagename}.sourceforge.net/
Source0:        http://downloads.sourceforge.net/%{packagename}/%{packagename}-%{version}.tar.gz
BuildRoot:      %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

BuildRequires:  doxygen
BuildArch:      noarch

%description
PStreams class is like a C++ wrapper for the POSIX.2 functions
popen(3) and pclose(3), using C++ iostreams instead of C's stdio
library.

%prep
%setup -q -n %{packagename}-%{version}

%build
make %{?_smp_mflags}

%install
rm -rf $RPM_BUILD_ROOT
make install  DESTDIR=$RPM_BUILD_ROOT includedir=%{_includedir}

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
%doc doc/html COPYING.LIB README AUTHORS ChangeLog
%{_includedir}/pstreams

%changelog
* Fri Feb 07 2013 Jonathan Wakely <pstreams@kayari.org> - 0.8.1-1
- Update version.

* Wed Jan 23 2013 Jonathan Wakely <pstreams@kayari.org> - 0.8.0-1
- Update version.

* Thu Oct 14 2010 Jonathan Wakely <pstreams@kayari.org> - 0.7.1-1
- Update version and override includedir make variable instead of prefix.

* Wed May 12 2010 Jonathan Wakely <pstreams@kayari.org> - 0.7.0-1
- Add spec file to upstream repo and update.

* Sun Jul 26 2009 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 0.6.0-8
- Rebuilt for https://fedoraproject.org/wiki/Fedora_12_Mass_Rebuild

* Thu Feb 26 2009 Fedora Release Engineering <rel-eng@lists.fedoraproject.org> - 0.6.0-7
- Rebuilt for https://fedoraproject.org/wiki/Fedora_11_Mass_Rebuild

* Fri Nov 07 2008 Rakesh Pandit <rakesh@fedoraproject.org> 0.6.0-6
- timestamp patch (Till Mass)

* Fri Nov 07 2008 Rakesh Pandit <rakesh@fedoraproject.org> 0.6.0-5
- saving timestamp using "install -p"

* Fri Nov 07 2008 Rakesh Pandit <rakesh@fedoraproject.org> 0.6.0-4
- included docs, license and other missing files.

* Fri Nov 07 2008 Rakesh Pandit <rakesh@fedoraproject.org> 0.6.0-3
- consistent use of macros - replaced %%{buildroot} with $RPM_BUILD_ROOT

* Thu Nov 06 2008 Rakesh Pandit <rakesh@fedoraproject.org> 0.6.0-2
- Cleaned up buildrequire

* Tue Nov 04 2008 Rakesh Pandit <rakesh@fedoraproject.org> 0.6.0-1
- initial package
