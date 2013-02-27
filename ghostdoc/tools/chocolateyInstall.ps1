  $options = 
	@{
		Headers = @{
			Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'; 
			'Accept-Charset' = 'ISO-8859-1,utf-8;q=0.7,*;q=0.3';
			'Accept-Language' = 'en-GB,en-US;q=0.8,en;q=0.6';
			Cookie = 'products.download.email=anon@gmail.com';
			Referer = 'http://submain.com/download/ghostdoc/';
		}
	}
  
  $dir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)	
  $file = (Join-Path $dir 'GhostDoc v4.0.12289.exe')
  Install-ChocolateyZipPackage 'ghostdoc' 'http://submain.com/download/GhostDoc_v4.0.zip' $dir -options $options
  Install-ChocolateyInstallPackage 'ghostdoc' 'exe' '/nosilentargsexist' $file
  [System.IO.File]::Delete($file)
  [System.IO.File]::Delete((Join-Path $dir 'GhostDoc Pro v4.0.12289.exe'))
  
  