cask "paraview@5.9" do
  version "5.9.0-RC3"
  sha256 "eb9fcb53ca517b88eb220a14a157ad216eae2c50e26387fdb05935784307ffd4"

  url "https://www.paraview.org/paraview-downloads/download.php?submit=Download&version=v#{version.major_minor}&type=binary&os=macOS&downloadFile=ParaView-#{version}-MPI-OSX10.13-Python3.8-64bit.dmg",
      user_agent: :fake
  appcast "https://www.paraview.org/files/listing.txt"
  name "ParaView"
  homepage "https://www.paraview.org/"

  depends_on macos: ">= :high_sierra"

  app "ParaView-#{version}.app"
end
