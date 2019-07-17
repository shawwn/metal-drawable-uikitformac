//
//  ViewController.swift
//  metal-drawable-uikitformac
//
//  Created by Emily Kolar on 7/16/19.
//  Copyright © 2019 sweetiebird. All rights reserved.
//

import UIKit
import MetalKit
import Metal

class ViewController: UIViewController, MTKViewDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let device = MTLCreateSystemDefaultDevice()
    // Do any additional setup after loading the view.
    let view = MTKView.init(frame: self.view.frame, device: device)
    view.colorPixelFormat = .bgra8Unorm
    view.sampleCount = 1
    view.clearColor = MTLClearColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
    view.delegate = self
    self.view.addSubview(view)
  }

  /**
   @method mtkView:drawableSizeWillChange:
   @abstract Called whenever the drawableSize of the view will change
   @discussion Delegate can recompute view and projection matricies or regenerate any buffers to be compatible with the new view size or resolution
   @param view MTKView which called this method
   @param size New drawable size in pixels
   */
  func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize)
  {
    print("drawableSizeWillChange")
  }

  
  /**
   @method drawInMTKView:
   @abstract Called on the delegate when it is asked to render into the view
   @discussion Called on the delegate when it is asked to render into the view
   */
  func draw(in view: MTKView)
  {
    let drawable = view.currentDrawable!;
    if drawable.conforms(to: CAMetalDrawable.self) {
      print("conforms")
    }
  }

}

