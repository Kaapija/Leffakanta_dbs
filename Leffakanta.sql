SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+02:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Leffakanta`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `elokuvat`
--

CREATE TABLE `elokuvat` (
  `elokuvaID` int(3) NOT NULL,
  `Nimi` varchar(100) NOT NULL,
  `Arvosana` float NOT NULL,
  `Lainassa` tinyint(1) NOT NULL,
  `Vuosi` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vedos taulusta `elokuvat`
--

INSERT INTO `elokuvat` (`elokuvaID`, `Nimi`, `Arvosana`, `Lainassa`, `Vuosi`) VALUES
(1, 'Crank', 4, 0, 2006);

-- --------------------------------------------------------

--
-- Rakenne taululle `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vedos taulusta `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('testi', 'otus');

-- --------------------------------------------------------

--
-- Rakenne taululle `näyttelijä`
--

CREATE TABLE `näyttelijä` (
  `näyttelijäID` int(11) NOT NULL,
  `Etunimi` varchar(50) NOT NULL,
  `Sukunimi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vedos taulusta `näyttelijä`
--

INSERT INTO `näyttelijä` (`näyttelijäID`, `Etunimi`, `Sukunimi`) VALUES
(1, 'Jason', 'Statham'),
(2, 'Amy', 'Smart');

-- --------------------------------------------------------

--
-- Rakenne taululle `pääosa`
--

CREATE TABLE `pääosa` (
  `elokuvaID` int(3) NOT NULL,
  `näyttelijäID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vedos taulusta `pääosa`
--

INSERT INTO `pääosa` (`elokuvaID`, `näyttelijäID`) VALUES
(1, 1),
(1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elokuvat`
--
ALTER TABLE `elokuvat`
  ADD PRIMARY KEY (`elokuvaID`);

  
  
--
-- Indexes for table `näyttelijä`
--
ALTER TABLE `näyttelijä`
  ADD PRIMARY KEY (`näyttelijäID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `elokuvat`
--
ALTER TABLE `elokuvat`
  MODIFY `elokuvaID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `näyttelijä`
--
ALTER TABLE `näyttelijä`
  MODIFY `näyttelijäID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
