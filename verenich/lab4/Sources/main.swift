import Foundation
import lib

func main() {
    let solver: QuadraticEquationSolver = QuadraticSolver()

    do {
        // Ввод коэффициентов
        print("Enter odds a:")
        let a = try InputValidator.validate(input: readLine() ?? "")

        print("Enter odds b:")
        let b = try InputValidator.validate(input: readLine() ?? "")

        print("Enter odds c:")
        let c = try InputValidator.validate(input: readLine() ?? "")

        // Решение уравнения
        let roots = try solver.solve(a: a, b: b, c: c)

        // Вывод результатов
        if roots.isEmpty {
            print("The equation has no real roots.")
        } else {
            print("Roots of the equation: \(roots.map { String(format: "%.2f", $0) }.joined(separator: ", "))")
        }

    } catch EquationError.invalidInput(let message) {
        print(message)
    } catch EquationError.notQuadratic {
        print("Error: The equation is not quadratic (a = 0).")
    } catch EquationError.noRealRoots {
        print("The equation has no real roots.")
    } catch {
        print("An unknown error occurred: \(error)")
    }
}

main();