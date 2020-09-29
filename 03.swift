import UIKit

class ViewController: UIViewController {
    
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    
    // viewDidLoad는 내가 만든 뷰를 불러왔을 때, 호출되는 함수. 부모 클래스인 UIViewController클래스에 선언되어 있고 뷰가 불러진 후 실행하고자 하는 기능이 필요할 때 viewDidLoad함수 내에 코드 입력
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        // imgView에 방금 선언한 imgOn 이미지 저장
        imgView.image = imgOn
    }
    
    
    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale: CGFloat = 2.0 // CGFloat은 xcode에서 float을 재정의한 자료형, float과 동일
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom) {
            newWidth = imgView.frame.width/scale
            newHeight = imgView.frame.height/scale
            btnResize.setTitle("확대", for: .normal)
        }
        else {
            newWidth = imgView.frame.width*scale
            newHeight = imgView.frame.height*scale
            btnResize.setTitle("확대", for: .normal)
        }
        // CGSize : 이미지 뷰의 프레임 크기 변경
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn {
            imgView.image = imgOn
        } else {
            imgView.image = imgOff
        }
    }
    
}

