;;;
;;; Copyright (c) 2010, Lorenz Moesenlechner <moesenle@in.tum.de>
;;; All rights reserved.
;;;
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions are met:
;;;
;;;     * Redistributions of source code must retain the above copyright
;;;       notice, this list of conditions and the following disclaimer.
;;;     * Redistributions in binary form must reproduce the above copyright
;;;       notice, this list of conditions and the following disclaimer in the
;;;       documentation and/or other materials provided with the distribution.
;;;     * Neither the name of the Intelligent Autonomous Systems Group/
;;;       Technische Universitaet Muenchen nor the names of its contributors
;;;       may be used to endorse or promote products derived from this software
;;;       without specific prior written permission.
;;;
;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;;; AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
;;; LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;;; CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;;; SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;;; INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;;; CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;;; POSSIBILITY OF SUCH DAMAGE.
;;;

(in-package :cl-urdf)

(defclass mimics ()
  ((joint :reader joint :initarg :joint)
   (multiplier :reader multiplier :initarg :multiplier :initform 0)
   (offset :reader offset :initarg :offset :initform 0)))

(defclass limits ()
  ((upper :reader upper :initarg :upper :initform 0)
   (lower :reader lower :initarg :lower :initform 0)
   (effort :reader effort :initarg :effort)
   (velocity :reader velocity :initarg :velocity)))

(defclass joint ()
  ((type :reader joint-type :initarg :type)
   (name :reader name :initarg :name)
   (axis :reader axis :initarg :axis
         :initform (cl-transforms:make-3d-vector 1 0 0))
   (origin :reader origin :initarg :origin
           :initform (cl-transforms:make-transform
                      (cl-transforms:make-3d-vector 0 0 0)
                      (cl-transforms:make-quaternion 0 0 0 1)))
   (parent :reader parent :initarg :parent)
   (child :reader child :initarg :child)
   (limits :reader limits :initarg :limits)
   (mimics :reader mimics :initarg :mimics)))
