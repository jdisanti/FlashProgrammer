//
// 128K 17-bit Addressed 32-pin Flash ROM Programmer
// Copyright 2017 John DiSanti
//
// Copyright and related rights are licensed under the Solderpad Hardware License, Version 0.51 (the "License");
// you may not use this file except in compliance with the License. You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law or agreed to in writing, software,
// hardware and materials distributed under this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES
// OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

use term;

/// Simplifies progress reporting to the terminal
pub struct ProgressReporter {
    progress_msg: String,
    current: usize,
    length: usize,
}

impl ProgressReporter {
    pub fn new(length: usize, progress_msg: String) -> ProgressReporter {
        ProgressReporter {
            progress_msg: progress_msg,
            current: 0,
            length: length,
        }
    }

    /// Adds the given incremental progress
    pub fn progress(&mut self, amount: usize) -> &mut ProgressReporter {
        self.current += amount;
        self
    }

    /// Reports the current progress to the terminal
    pub fn report(&mut self) {
        if let Some(ref mut terminal) = term::stdout() {
            drop(terminal.carriage_return());
            drop(write!(terminal,
                        "{} {:3} of {:3} ({:3}%)...",
                        self.progress_msg,
                        self.current,
                        self.length,
                        (self.current as f64 / self.length as f64 * 100.0) as usize));
        }
    }

    /// Wraps up with an optional message
    pub fn finish<S: Into<String>>(self, msg: S) {
        let msg: String = msg.into();
        if msg.is_empty() {
            println!("");
        } else {
            println!("\n{}", msg);
        }
    }
}
