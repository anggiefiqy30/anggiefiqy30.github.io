--
-- Database: `new_kmmeanclustering`
--
CREATE DATABASE IF NOT EXISTS `new_kmmeanclustering` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `new_kmmeanclustering`;

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `kode_alternatif` varchar(11) NOT NULL,
  `nama_alternatif` varchar(30) DEFAULT NULL,
  `ket` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`kode_alternatif`, `nama_alternatif`, `ket`) VALUES
('B', 'Zyrex', ''),
('A', 'ACER', ''),
('C', 'Asus', '');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `kode_kriteria` varchar(10) NOT NULL,
  `nama_kriteria` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`kode_kriteria`, `nama_kriteria`) VALUES
('C1', 'Harddisk'),
('C2', 'Power Supplay'),
('C3', 'Motherboard');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `last_login`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', '2017-05-05 16:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `kode_alternatif` varchar(10) DEFAULT NULL,
  `kode_kriteria` varchar(10) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
(10, 'C', 'C1', 11),
(9, 'B', 'C1', 50),
(8, 'A', 'C1', 50),
(11, 'C', 'C2', 5),
(15, 'A', 'C2', 6),
(14, 'B', 'C2', 78),
(16, 'B', 'C3', 100),
(17, 'A', 'C3', 21),
(18, 'C', 'C3', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
