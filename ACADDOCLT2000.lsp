
;; Runs on every drawing open.
;; Purpose: system variables changes.

(defun C:SetVarIfDifferent (var val)
  (if (/= (getvar var) val)
    (setvar var val)
  )
)

(defun C:SetSystemVars ()
  ;; Quiet startup
  (C:SetVarIfDifferent "CMDECHO" 0)

  ;; Defaults
  (C:SetVarIfDifferent "CECOLOR" "BYLAYER")
  (C:SetVarIfDifferent "CELTYPE" "BYLAYER")
  (C:SetVarIfDifferent "CELWEIGHT" -1) ;; -1 = BYLAYER

  ;; Linetype scales
  (C:SetVarIfDifferent "LTSCALE" 1)
)

(defun C:CadStartup ()
  (C:SetSystemVars)
  (princ)
)

(C:CadStartup)
(princ)
