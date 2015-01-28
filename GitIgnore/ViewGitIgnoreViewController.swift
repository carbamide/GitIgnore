//
//  ViewGitIgnoreViewController.swift
//  GitIgnore
//
//  Created by Joshua Barrow on 1/28/15.
//  Permission is hereby granted, free of charge, to any person obtaining a copy of this
//  software and associated documentation files (the "Software"), to deal in the Software
//  without restriction, including without limitation the rights to use, copy, modify, merge,
//  publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
//  to whom the Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all copies or
//  substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
//  BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
//  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
//  IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import Cocoa

/**
*  Class Responsible for displaying the gitignore file from gitignore.io
*/
class ViewGitIgnoreViewController: NSViewController {
    
    /// The gitignore file data as returned from the backend
    var gitIgnoreFileData : NSData?
    
    @IBOutlet var gitIgnoreTextView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataString = NSString(data: self.gitIgnoreFileData!, encoding: NSUTF8StringEncoding)
        
        self.gitIgnoreTextView.string = dataString
    }
}
