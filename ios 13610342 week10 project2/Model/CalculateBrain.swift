
import UIKit

//Kit แปลว่า ชุดเครื่องมือ
//UI แปลว่า User Interface ส่วนที่เกี่ยวกับการ

//struct จะเป็นแบบ pass by Value คือ เหมือนกอปปี้แยกกันคนละอัน แก้กับอันใดอันหนี้งไม่มีผลกับอีกอัน
//class จะเป็นแบบ pass by      Reference        คือ เหมือนกอปปี้แยกกันคนละอัน แต่แก้กับอันใดอันหนี้ง  จะ  ผลกับอีกอัน

struct CalculateBrain {
    
//    var bmi: Float = 0.0 // 1 Value เก็บตัวเดียว
    // ไม่ใช้แล้วนะ เพราะใช้ bmiStruct
    var bmiStruct: BMI? // 3 VAlue เก็บ 3 ตัวเป็นชุด (value , advice , color)
    //เครื่องหมายคำถาม คือ เป็นตัวแปรชนิด optional คือ ตัวเลือก จะมีค่า หรือ ไม่มีค่าก็เป็นไปได้
    // ดังนั้น มันอาจจะไม่มีค่าก็ได้
    
    func getBMIValue() -> String{
    //  let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiStruct?.value ?? 0.0)
                                    //  ออก สอบ จ้าาาาาาาาาาาาาาาา ^^^^^^^^^
        
        return bmiTo1DecimalPlace
    }
    
    func getadvice() -> String {
        return bmiStruct?.advice ?? "NO ADVICE"
        
        //if แบบย่อ
        // ตัวแปรที่ต้องการดูค่าว่ามีค่าหรือไม่ ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
        //
        //
        //
    }
    
    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
    
    mutating func calculateBMI(height:Float, weight:Float){
        // bmi ตัวที่ใช้นี้ ไม่มี var หรือ let นำหน้า คือตัวที่เป็น Global var
        //ส่วน weight กับ height คือ ตัวที่ฟังก์ชันรับค่ามาในชื่อนั้น เป็น Local var
        
        
//        bmi = weight / (height*height)
        
        let bmiValueLocal = weight / (height * height)
        
        if bmiValueLocal < 18.5{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!", color: #colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1))
        }else if bmiValueLocal < 24.9 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1))
        }else{
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat less pies!", color: #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1))
        }//end else
        
    }//end func
}//end struct
