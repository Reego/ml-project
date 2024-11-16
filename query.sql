-- Collect color data and metallicity values for stars in the sppParams table of the SDSS DR 18
-- link: https://skyserver.sdss.org/dr18/SearchTools/SQL/
-- Note: Remove #Table from the .csv before obtaining training data (if present)

SELECT
  p.u as u,              -- PSF u magnitude
  p.g as g,              -- PSF g magnitude
  p.r as r,              -- PSF r magnitude
  p.i as i,              -- PSF i magnitude
  p.z as z,              -- PSF z magnitude
  p.type as type,        -- object type
  p.mode as mode,        -- object mode (primary)
  sp.flag as flags,      -- SSPP flags for quality of data
  sp.fehadop as feh,     -- spectroscopic metallicity value
  sp.teffadop as teff,   -- spectroscopic effective temperature value
  sp.loggadop as logg    -- spectroscopic log surface gravity value
FROM sppParams AS sp
JOIN photoObj AS p ON p.objid = sp.bestobjid   -- merge the SEGUE data with SDSS photoObj table
WHERE
  sp.fehadopn >= 2 AND      -- ensure at least 2 observations
  sp.teffadopn >= 2 AND     -- ensure at least 2 observations
  sp.loggadopn >= 2         -- ensure at least 2 observations
